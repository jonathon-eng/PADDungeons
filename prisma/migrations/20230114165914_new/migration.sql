/*
  Warnings:

  - You are about to drop the column `name` on the `Monsters` table. All the data in the column will be lost.
  - You are about to drop the column `no` on the `Monsters` table. All the data in the column will be lost.
  - Added the required column `title` to the `Monsters` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Monsters` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Monsters" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT
);
INSERT INTO "new_Monsters" ("id") SELECT "id" FROM "Monsters";
DROP TABLE "Monsters";
ALTER TABLE "new_Monsters" RENAME TO "Monsters";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
