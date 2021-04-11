FROM hayd/alpine-deno:latest as base

ENV VR_VERSION=1.0.0-beta.18

RUN deno install -qA -n vr https://deno.land/x/velociraptor@${VR_VERSION}/cli.ts

RUN vr --version