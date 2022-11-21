#!/bin/bash

# shellcheck disable=SC2086

set -euo pipefail

env

"${TRUNK_PATH}" check github_annotate \
  --ci \
  --github-commit "${GITHUB_EVENT_WORKFLOW_RUN_HEAD_SHA}" \
  --github-label "${INPUT_LABEL}" \
  /tmp/annotations.bin \
  ${INPUT_ARGUMENTS}
