set -x
env
crane auth login "${registryServer}" -u "${username}" -p "${password}"
crane push "/input/${tarImage}" "${registryServer}/${repoName}:${tag}"
