const std = @import("std");
const parser = @import("parser/parser.zig");
const types = @import("parser/types/types.zig");


const allocator = std.heap.smp_allocator; // idk if this can cross c boundry

// c api for parser, so nim can use 
const Libservice = extern struct {
    nameptr: [*]const u8,
    namelen: usize,
    descptr: [*]const u8,
    desclen: usize,
    execptr: [*]const u8,
    execlen: usize,
};

export fn parse_service(txtptr: [*]const u8, txtlen: usize, out: *Libservice) callconv(.c) c_int {
    const text = txtptr[0..txtlen];
   

    const cfg = parser.parse_service(allocator, text) catch return -1;

    out.* = .{
        .nameptr = cfg.name.ptr,
        .namelen = cfg.name.len,
        .descptr = cfg.desc.ptr,
        .desclen = cfg.desc.len,
        .execptr = cfg.exec.ptr,
        .execlen = cfg.exec.len,
    };
    return 0;
}