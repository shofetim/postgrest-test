begin;

create extension if not exists pgcrypto;

create table customer (
  id uuid primary key default gen_random_uuid(),
  created_at timestamp with time zone default current_timestamp,
  first_name text not null,
  last_name text not null,
  weight int not null,
  height int not null,
  email text not null
);

create table "order" (
  id uuid primary key default gen_random_uuid(),
  created_at timestamp with time zone default current_timestamp,
  customer_id uuid references customer (id) on update cascade on delete no action,
  token text not null,
  product text not null,
  price numeric (6,2) not null
);

create role anon;
grant usage on schema public to anon;
grant select on table "order", customer to anon;

commit;
