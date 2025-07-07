/*
  Warnings:

  - You are about to drop the column `create_at` on the `addresses` table. All the data in the column will be lost.
  - You are about to drop the column `update_at` on the `addresses` table. All the data in the column will be lost.
  - You are about to drop the column `create_at` on the `organizations` table. All the data in the column will be lost.
  - You are about to drop the column `update_at` on the `organizations` table. All the data in the column will be lost.
  - Added the required column `updated_at` to the `addresses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `adoption_requirements` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `organizations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `pets` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `photos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "addresses" DROP COLUMN "create_at",
DROP COLUMN "update_at",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "adoption_requirements" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "organizations" DROP COLUMN "create_at",
DROP COLUMN "update_at",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "pets" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "photos" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL;
