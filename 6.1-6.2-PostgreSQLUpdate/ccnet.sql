ALTER TABLE "EmailUser" ADD COLUMN "reference_id" character varying(255);
ALTER TABLE "LDAPUsers" ADD COLUMN "reference_id" character varying(255);

CREATE UNIQUE INDEX "EmailUser_reference_id" ON "EmailUser" USING btree (reference_id);
CREATE UNIQUE INDEX "LDAPUsers_reference_id" ON "LDAPUsers" USING btree (reference_id);

