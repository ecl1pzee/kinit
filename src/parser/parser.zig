const std = @import("std");
const automl = @import("automl");
const types = @import("types/types.zig");
const log = @import("../zig-utils/log.zig");

pub fn parse_service(allocator: std.mem.Allocator, text: []const u8) !types.Service {
    var parser = automl.Parser.init(allocator);
    var doc = parser.parse(text) catch |err| {
        log.err("{f}\n", .{parser.diag});
        return err;
    };
    defer doc.deinit();

    var cfg: types.Service = undefined;

    // [service]
    if (try doc.get_str("service", "name")) |v| cfg.name = try allocator.dupe(u8, v);
    if (try doc.get_str("service", "desc")) |v| cfg.desc = try allocator.dupe(u8, v);
    if (try doc.get_str("service", "exec")) |v| cfg.exec = try allocator.dupe(u8, v);

    return cfg;
}