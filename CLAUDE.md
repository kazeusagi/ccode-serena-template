# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Structure

This is a Turborepo monorepo using Bun as the package manager and runtime. The project consists of:

**Apps:**
- `apps/web`: Main Next.js application (port 3000)
- `apps/docs`: Documentation Next.js application (port 3001)

**Packages:**
- `packages/ui`: Shared UI components (`@repo/ui`)
- `packages/typescript-config`: Shared TypeScript configurations (`@repo/typescript-config`)

## Development Commands

**Root level commands (run from `/home/node/app`):**
- `bun run dev` - Start all apps in development mode with Turbopack
- `bun run build` - Build all apps and packages
- `bun run lint` - Run Biome linting on all code
- `bun run format` - Format code using Biome
- `bun run check-types` - Run TypeScript type checking across all workspaces
- `bun test` - Run tests using Bun's built-in test runner

**Individual app commands:**
- `cd apps/web && bun run dev` - Start web app only (port 3000)
- `cd apps/docs && bun run dev` - Start docs app only (port 3001)

**UI package commands:**
- `cd packages/ui && bun run generate:component` - Generate new React component using Turbo generators

## Tech Stack

- **Package Manager**: Bun (v1.2.19)
- **Monorepo**: Turborepo with workspaces
- **Frontend**: Next.js 15.4+ with React 19+
- **TypeScript**: v5.8+ with strict configuration
- **Linting/Formatting**: Biome (replaces ESLint + Prettier)
- **Git Hooks**: Lefthook (runs lint and test on pre-commit)
- **Testing**: Bun's built-in test runner

## Code Conventions

- **Import/Export**: Uses ES modules with `.tsx` extension for React components
- **TypeScript**: Strict mode enabled with `noUncheckedIndexedAccess`
- **Formatting**: 2-space indentation, single quotes for JavaScript strings
- **Component Organization**: Shared components in `packages/ui/src/`

## Testing

- Tests are written using Bun's built-in test runner
- Example test structure: `import { expect, it } from 'bun:test'`
- Test files use `.test.ts` or `.test.tsx` extension
- Run tests with `bun test` from root or specific directories

## Architecture Notes

- Both apps consume the shared `@repo/ui` package
- TypeScript configurations extend from `@repo/typescript-config`
- UI components use direct file exports: `import { Button } from '@repo/ui/button'`
- All packages are private and use workspace protocol (`*`) for internal dependencies
- Turbo handles task orchestration with dependency-aware builds

## Git Workflow

Lefthook automatically runs on pre-commit:
- Biome linting (`bun run lint`)  
- Test suite (`bun test`)
- Build step is commented out but available

Always run `bun run lint` and `bun test` before committing to ensure code quality.