FROM hayd/alpine-deno:latest as base

RUN deno install -qA -n vr https://deno.land/x/velociraptor@1.0.0-beta.18/cli.ts

RUN vr --version