-- CreateTable
CREATE TABLE "addresses" (
    "id" TEXT NOT NULL,
    "address" VARCHAR(150) NOT NULL,
    "number" VARCHAR(10) NOT NULL,
    "complement" VARCHAR(100),
    "city" VARCHAR(100) NOT NULL,
    "postalCode" VARCHAR(20) NOT NULL,
    "state" VARCHAR(50) NOT NULL,
    "country" VARCHAR(50) NOT NULL,
    "latitude" DECIMAL(10,7) NOT NULL,
    "longitude" DECIMAL(10,7) NOT NULL,
    "create_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMP(3) NOT NULL,
    "organization_id" TEXT NOT NULL,

    CONSTRAINT "addresses_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "addresses" ADD CONSTRAINT "addresses_organization_id_fkey" FOREIGN KEY ("organization_id") REFERENCES "organizations"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
