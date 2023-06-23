ARG TAG="latest"

FROM mcr.microsoft.com/dotnet/sdk:${TAG}

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - \
 && apt-get install -y --no-install-recommends nodejs \
 && npm i -g npm pnpm rimraf \
 && echo "node version: $(node --version)" \
 && echo "npm version: $(npm --version)" \
 && echo "pnpm version: $(pnpm --version)" \
 && rm -rf /var/lib/apt/lists/*
