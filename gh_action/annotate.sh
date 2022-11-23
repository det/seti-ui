#!/bin/bash

# shellcheck disable=SC2086

set -euo pipefail

env

"${TRUNK_PATH}" check github_annotate \
  --ci \
  --upstream HEAD \
  --github-commit "${GITHUB_EVENT_WORKFLOW_RUN_HEAD_SHA}" \
  --github-label "${INPUT_LABEL}" \
  "${TRUNK_ANNOTATIONS_FILE}" \
  ${INPUT_ARGUMENTS}
