/*
  Warnings:

  - You are about to drop the column `photos` on the `pets` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "pets" DROP COLUMN "photos";

-- CreateTable
CREATE TABLE "photos" (
    "id" TEXT NOT NULL,
    "url" VARCHAR(300) NOT NULL,
    "pet_id" TEXT NOT NULL,

    CONSTRAINT "photos_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "photos" ADD CONSTRAINT "photos_pet_id_fkey" FOREIGN KEY ("pet_id") REFERENCES "pets"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
