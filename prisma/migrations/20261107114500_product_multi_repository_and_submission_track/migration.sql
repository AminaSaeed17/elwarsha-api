-- DropIndex
DROP INDEX IF EXISTS "ProductRepository_productId_key";

-- DropIndex
DROP INDEX IF EXISTS "Submission_assignmentId_authorUserId_key";

-- AlterTable
ALTER TABLE "ProductRepository" ADD COLUMN IF NOT EXISTS "track" TEXT NOT NULL DEFAULT 'backend';

-- AlterTable
ALTER TABLE "Submission" ADD COLUMN IF NOT EXISTS "track" TEXT NOT NULL DEFAULT 'backend';

-- CreateIndex
CREATE UNIQUE INDEX IF NOT EXISTS "ProductRepository_productId_track_key" ON "ProductRepository"("productId", "track");

-- CreateIndex
CREATE UNIQUE INDEX IF NOT EXISTS "Submission_assignmentId_authorUserId_track_key" ON "Submission"("assignmentId", "authorUserId", "track");
