const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // strip shit 
    const strip = b.option(bool, "strip", "strip debug symbols from the binary") orelse
        (optimize != .Debug);

    const automl = b.dependency("automl", .{
        .target = target,
        .optimize = optimize,
    });

    
    const parsemod = b.createModule(.{
        .root_source_file = b.path("src/parser/parser.zig"),
        .target = target,
        .optimize = optimize,
    });
    parsemod.addImport("automl", automl.module("automl"));
    // kinit.a
    const lib = b.addLibrary(.{
        .name = "kinit",
        .linkage = .static,
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/root.zig"),
            .target = target,
            .optimize = optimize,
            .strip = strip,
        }),
    });

    lib.root_module.addImport("automl", automl.module("automl"));
    lib.root_module.addImport("parser", parsemod);

    b.installArtifact(lib);
}