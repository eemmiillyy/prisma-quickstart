-- CreateEnum
CREATE TYPE "ModelKind" AS ENUM ('project', 'projectMembership', 'user', 'account', 'database', 'repository');

-- CreateEnum
CREATE TYPE "ProjectRole" AS ENUM ('admin', 'developer', 'collaborator', 'viewer');

-- CreateTable
CREATE TABLE "Project" (
    "kind" "ModelKind" NOT NULL DEFAULT E'project',
    "id" TEXT NOT NULL,
    "handle" TEXT NOT NULL,
    "displayName" TEXT NOT NULL,
    "ownerId" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Project.ownerId_handle_unique" ON "Project"("ownerId", "handle");
