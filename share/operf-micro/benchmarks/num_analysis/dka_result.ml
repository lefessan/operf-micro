open Complex

let result =  [|
  (4609495941955151388L), (-4925315678189883840L);
  (4603788766594249165L), (4469407268386840576L);
  (4607227381575449040L), (4597415002980961401L);
  (4611686040758328610L), (4607181080088711774L);
  (4606977868489038161L), (4601402942417221173L);
  (4606365269854076974L), (4603095053276770026L);
  (4604987981367872213L), (4604185689147980879L);
  (4603508815647136303L), (4605205845441300237L);
  (4601848612889650037L), (4602423405632401453L);
  (4601743440208240234L), (4606217393343398368L);
  (4598373203053152137L), (4606785224134440499L);
  (4590416504165025618L), (4607218671646026064L);
  (-4636337817698600478L), (4607297704296600951L);
  (-4631175451823012992L), (4604741352821826425L);
  (-4626631596793354552L), (4606792124015018103L);
  (-4622828325926655100L), (4606219496397940560L);
  (-4620093175772455755L), (4605344169958808222L);
  (-4618902404185974826L), (4604321035974297396L);
  (-4617688536712020503L), (4603209528983637412L);
  (-4618992026653647508L), (4599927243512129093L);
  (-4607182418798215210L), (4611686018371006138L);
  (-4617103847208828633L), (4601936371906430653L);
  (-4616810885002263945L), (4598666337950558484L);
  (-4616505784404768205L), (4592079875026690100L);
  (-4616505784404768201L), (-4631292161828085792L);
  (-4618992026653649138L), (-4623444793342642329L);
  (-4616810885002263959L), (-4624705698904217314L);
  (-4607182418798215210L), (-4611686018483769669L);
  (-4617103847208827253L), (-4621435664948344053L);
  (-4617688536712020859L), (-4620162507871138439L);
  (-4618902404185974930L), (-4619051000880478144L);
  (-4620093175772456032L), (-4618027866895967476L);
  (4589863516372381470L), (4442138114984247296L);
  (-4622828325926655058L), (-4617152540456835075L);
  (-4626631596793373920L), (-4616579912839729926L);
  (-4636337817698597558L), (-4616074332558174956L);
  (4590416504165024673L), (-4616153365208749710L);
  (-4631175451822883081L), (-4618630684032998805L);
  (4598373203053152157L), (-4616586812720335285L);
  (4601743440208243457L), (-4617154643511376902L);
  (4603508815647143836L), (-4618166191413490724L);
  (4604987981367872304L), (-4619186347706794544L);
  (4601848612889502688L), (-4620948631221655480L);
  (4606365269854073571L), (-4620276983578027817L);
  (4611686040758328610L), (-4616190956766064034L);
  (4606977868488900913L), (-4621969094438685359L);
  (4607227381533097846L), (-4625957033246311707L);
  (4606890018283875065L), (4490639254596802048L);
|]

let result = 
  Array.map (fun (a, b) -> 
    { re = (Int64.float_of_bits a); im = (Int64.float_of_bits b) }) result

open Micro_bench_types

let check tab =
  if compare result tab = 0 then Ok
  else Error ""