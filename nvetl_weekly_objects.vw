﻿create or replace force view u1.nvetl_weekly_objects as
select distinct object_name from T_RDWH_PROC_OBJECT where is_used=1 and type_load in ('DAILY','VIEW','ONLINE','WEEKLY_NEW');
grant select on U1.NVETL_WEEKLY_OBJECTS to LOADDB;


