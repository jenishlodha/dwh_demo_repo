--delete from oltp22

DELETE from STAGING_OWNER.STAGING_LOCAL_TO_PHOENIX_MAP
where phoenix_value_tx like '%RM_REV_FEEIN_FI%'and country_code_tx like '%AZ%';  -- 1 row

COMMIT;

