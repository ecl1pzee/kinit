//! log stuff
const std = @import("std");

pub const print = std.debug.print;

pub var color: bool = false; 
// wrapp prefixes
const reset = "\x1b[0m";

inline fn cprefix(comptime code: []const u8, comptime prefix: []const u8) []const u8 {
    return "\x1b[" ++ code ++ "m" ++ prefix ++ reset;
}

pub inline fn err(comptime fmt: []const u8, args: anytype) void {
    if (color) {
        print(cprefix("31", "[x] ") ++ fmt, args);
    } else {
        print("[x] " ++ fmt, args);
    }
}

pub inline fn warn(comptime fmt: []const u8, args: anytype) void {
    if (color) {
        print(cprefix("33", "[!] ") ++ fmt, args);
    } else {
        print("[!] " ++ fmt, args);
    }
}

pub inline fn info(comptime fmt: []const u8, args: anytype) void {
    print("[*] " ++ fmt, args);
}

pub inline fn success(comptime fmt: []const u8, args: anytype) void {
    if (color) {
        print(cprefix("32", "[+] ") ++ fmt, args);
    } else {
        print("[+] " ++ fmt, args);
    }
}

// regardless of anything
pub inline fn ask(comptime fmt: []const u8, args: anytype) void {
    if (color) {
        print(cprefix("36", "[?] ") ++ fmt, args);
    } else {
        print("[?] " ++ fmt, args);
    }
}
// for people that like shit on a golden platter
pub inline fn debug1(comptime fmt: []const u8, args: anytype) void {
    print("[#] " ++ fmt, args);
}
// for people that like shit shoved in their face
pub inline fn debug2(comptime fmt: []const u8, args: anytype) void {
    print("[##] " ++ fmt, args);
}
// for people that like shit shoved in their face agressively
pub inline fn debug3(comptime fmt: []const u8, args: anytype) void {
    print("[###] " ++ fmt, args);
}
// extreme debugging, shows traces, only for debugging 
pub inline fn trace(comptime fmt: []const u8, args: anytype) void {
    print("[~] " ++ fmt, args);
}
// noreturn
pub inline fn fatal(comptime fmt: []const u8, args: anytype) noreturn {
    if (color) {
        print(cprefix("31", "[fatal] ") ++ fmt, args);
    } else {
        print("[fatal] " ++ fmt, args);
    }
    std.process.exit(1);
}

pub inline fn newline(comptime fmt: []const u8) void {
    print("\n" ++ fmt, .{});
}