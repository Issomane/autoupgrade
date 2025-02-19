SET SESSION sql_mode='';
SET NAMES 'utf8mb4';

/* Add a new field to cart_rule */
/* https://github.com/PrestaShop/PrestaShop/pull/37911/ */
ALTER TABLE `PREFIX_cart_rule` ADD COLUMN `type` varchar(128) DEFAULT NULL;
CREATE INDEX `type` ON `PREFIX_cart_rule` (`type`)
