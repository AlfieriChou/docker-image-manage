FROM denoland/deno:alpine as base

ENV VR_VERSION=1.5.0

RUN deno install -qA -n vr https://deno.land/x/velociraptor@${VR_VERSION}/cli.ts

RUN vr --version