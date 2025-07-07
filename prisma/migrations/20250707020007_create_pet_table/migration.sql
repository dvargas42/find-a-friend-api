-- CreateEnum
CREATE TYPE "PetAge" AS ENUM ('PUPPY', 'ADULT', 'SENIOR');

-- CreateEnum
CREATE TYPE "PetSize" AS ENUM ('TINY', 'SMALL', 'MEDIUM', 'LARGE');

-- CreateEnum
CREATE TYPE "PetEnvironment" AS ENUM ('SPACIOUS_ENVIRONMENT', 'SMALL_ENVIRONMENT');

-- CreateTable
CREATE TABLE "pets" (
    "id" TEXT NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "about" VARCHAR(300) NOT NULL,
    "age" "PetAge" NOT NULL,
    "size" "PetSize" NOT NULL,
    "energy_level" INTEGER NOT NULL,
    "independency_level" INTEGER NOT NULL,
    "environment" "PetEnvironment" NOT NULL,
    "photos" TEXT NOT NULL,
    "adoption_requirements" TEXT NOT NULL,
    "organization_id" TEXT NOT NULL,

    CONSTRAINT "pets_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "pets" ADD CONSTRAINT "pets_organization_id_fkey" FOREIGN KEY ("organization_id") REFERENCES "organizations"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
