ALTER TABLE orders
  ADD COLUMN amount_paid_kop BIGINT;

-- До появления скидок сохранённая сумма одновременно была gross и net.
UPDATE orders SET amount_paid_kop = amount_kop;

ALTER TABLE orders
  ALTER COLUMN amount_paid_kop SET NOT NULL;

