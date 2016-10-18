# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: maestrano-rails 1.0.0.pre.RC8 ruby lib

Gem::Specification.new do |s|
  s.name = "maestrano-rails"
  s.version = "1.0.0.pre.RC8"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Arnaud Lachaume"]
  s.date = "2016-10-18"
  s.description = "Maestrano is the next generation marketplace for SME applications. See https://maestrano.com for details."
  s.email = ["arnaud.lachaume@maestrano.com"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "Rakefile",
    "app/controllers/maestrano/rails/metadata_controller.rb",
    "app/controllers/maestrano/rails/saml_base_controller.rb",
    "app/controllers/maestrano/rails/web_hook_controller.rb",
    "lib/generators/active_record/maestrano_group_generator.rb",
    "lib/generators/active_record/maestrano_user_generator.rb",
    "lib/generators/active_record/templates/migration.rb",
    "lib/generators/maestrano/group_generator.rb",
    "lib/generators/maestrano/install_generator.rb",
    "lib/generators/maestrano/orm_helpers.rb",
    "lib/generators/maestrano/templates/group_users_controller.rb",
    "lib/generators/maestrano/templates/groups_controller.rb",
    "lib/generators/maestrano/templates/maestrano.rb",
    "lib/generators/maestrano/templates/saml_controller.rb",
    "lib/generators/maestrano/user_generator.rb",
    "lib/generators/mongoid/maestrano_group_generator.rb",
    "lib/generators/mongoid/maestrano_user_generator.rb",
    "lib/maestrano-rails.rb",
    "lib/maestrano/rails.rb",
    "lib/maestrano/rails/controllers/maestrano_security.rb",
    "lib/maestrano/rails/models/maestrano_auth_resource.rb",
    "lib/maestrano/rails/routing/routes.rb",
    "maestrano-rails.gemspec"
  ]
  s.homepage = "https://maestrano.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Rails plugin for Maestrano API"
  s.test_files = ["test/controllers", "test/controllers/generic_controller_test.rb", "test/controllers/group_users_controller_test.rb", "test/controllers/groups_controller_test.rb", "test/controllers/metadata_controller_test.rb", "test/controllers/saml_controller_test.rb", "test/dummy", "test/dummy/db", "test/dummy/db/test.sqlite3", "test/dummy/log", "test/dummy/log/development.log", "test/dummy/log/test.log", "test/dummy_activerecord", "test/dummy_activerecord/README.rdoc", "test/dummy_activerecord/Rakefile", "test/dummy_activerecord/app", "test/dummy_activerecord/app/assets", "test/dummy_activerecord/app/assets/javascripts", "test/dummy_activerecord/app/assets/javascripts/application.js", "test/dummy_activerecord/app/assets/javascripts/pages.js", "test/dummy_activerecord/app/assets/stylesheets", "test/dummy_activerecord/app/assets/stylesheets/application.css", "test/dummy_activerecord/app/assets/stylesheets/pages.css", "test/dummy_activerecord/app/controllers", "test/dummy_activerecord/app/controllers/application_controller.rb", "test/dummy_activerecord/app/controllers/maestrano", "test/dummy_activerecord/app/controllers/maestrano/account", "test/dummy_activerecord/app/controllers/maestrano/account/group_users_controller.rb", "test/dummy_activerecord/app/controllers/maestrano/account/groups_controller.rb", "test/dummy_activerecord/app/controllers/maestrano/auth", "test/dummy_activerecord/app/controllers/maestrano/auth/saml_controller.rb", "test/dummy_activerecord/app/controllers/pages_controller.rb", "test/dummy_activerecord/app/helpers", "test/dummy_activerecord/app/helpers/application_helper.rb", "test/dummy_activerecord/app/helpers/pages_helper.rb", "test/dummy_activerecord/app/mailers", "test/dummy_activerecord/app/models", "test/dummy_activerecord/app/models/admin", "test/dummy_activerecord/app/models/admin.rb", "test/dummy_activerecord/app/models/admin/monster.rb", "test/dummy_activerecord/app/models/mno_crew.rb", "test/dummy_activerecord/app/models/mno_monster.rb", "test/dummy_activerecord/app/models/monster.rb", "test/dummy_activerecord/app/views", "test/dummy_activerecord/app/views/layouts", "test/dummy_activerecord/app/views/layouts/application.html.erb", "test/dummy_activerecord/app/views/pages", "test/dummy_activerecord/app/views/pages/home.html.erb", "test/dummy_activerecord/config", "test/dummy_activerecord/config.ru", "test/dummy_activerecord/config/application.rb", "test/dummy_activerecord/config/boot.rb", "test/dummy_activerecord/config/database.yml", "test/dummy_activerecord/config/environment.rb", "test/dummy_activerecord/config/environments", "test/dummy_activerecord/config/environments/development.rb", "test/dummy_activerecord/config/environments/production.rb", "test/dummy_activerecord/config/environments/test.rb", "test/dummy_activerecord/config/initializers", "test/dummy_activerecord/config/initializers/backtrace_silencers.rb", "test/dummy_activerecord/config/initializers/inflections.rb", "test/dummy_activerecord/config/initializers/maestrano.rb", "test/dummy_activerecord/config/initializers/mime_types.rb", "test/dummy_activerecord/config/initializers/secret_token.rb", "test/dummy_activerecord/config/initializers/session_store.rb", "test/dummy_activerecord/config/initializers/wrap_parameters.rb", "test/dummy_activerecord/config/locales", "test/dummy_activerecord/config/locales/en.yml", "test/dummy_activerecord/config/routes.rb", "test/dummy_activerecord/db", "test/dummy_activerecord/db/development.sqlite3", "test/dummy_activerecord/db/migrate", "test/dummy_activerecord/db/migrate/20140526125222_create_monsters.rb", "test/dummy_activerecord/db/migrate/20140526125242_create_admin_monsters.rb", "test/dummy_activerecord/db/migrate/20140526144828_create_mno_monsters.rb", "test/dummy_activerecord/db/migrate/20140526151139_create_mno_crews.rb", "test/dummy_activerecord/db/schema.rb", "test/dummy_activerecord/db/test.sqlite3", "test/dummy_activerecord/lib", "test/dummy_activerecord/lib/assets", "test/dummy_activerecord/log", "test/dummy_activerecord/log/development.log", "test/dummy_activerecord/log/test.log", "test/dummy_activerecord/public", "test/dummy_activerecord/public/404.html", "test/dummy_activerecord/public/422.html", "test/dummy_activerecord/public/500.html", "test/dummy_activerecord/public/favicon.ico", "test/dummy_activerecord/script", "test/dummy_activerecord/script/rails", "test/dummy_activerecord/tmp", "test/dummy_activerecord/tmp/cache", "test/dummy_activerecord/tmp/cache/assets", "test/dummy_activerecord/tmp/cache/assets/sprockets", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/-C", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/-C/-CUaFte-At_ZVb8D71c_AiMzrOPTXw-BMGqTojtmy3Y.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/-_", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/-_/-_MabpLUhXiPkxXGOiOrgjXkpEv73ICqppxBTxZvccw.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/01", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/01/01GEO_ZVbuwvmST4e85z6nkHLX1bc3e_ywpiUzFPnSo.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/0K", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/0K/0Kl2n4Uk_bMN9p4smyeemwQGasEZIOn0fQO0eJfKaTY.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/1F", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/1F/1FTJP_uF11AXjtmunFnHKmvNuLGFkJKlZx07cpkVt1E.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/2-", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/2-/2-0w2lrUYGJTWSS8ctq_qa38uSr88P2L-iV2bXyyGuA.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/2-0w2lrUYGJTWSS8ctq_qa38uSr88P2L-iV2bXyyGuA.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/2K", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/2K/2K-jK2KOfbYsAG5az024Vrk_WQn6Dm09R2dlscmZDs4.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/5P", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/5P/5P5zP6yAr0lenf-iJYYc2OjmzqumtroTKdE04IU80bI.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/5P/5PzaTKdv0KAps-RvN527yFgLosXBCc5UUImL9ZsEutI.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/5g", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/5g/5g7dhxVp4YbZmFw_-T3aU2oYq2Z9Jgtps0CKneXYSS0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/5g7dhxVp4YbZmFw_-T3aU2oYq2Z9Jgtps0CKneXYSS0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/5t", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/5t/5tSJkXP0EAhAS8ZziWUc_XxADJ9TudnU4KyNUnyqVLA.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/69", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/69/691Ojglb0GeVkTxD5eKWXmRXNoeME4UAnH5X1n0GoaQ.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/7e", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/7e/7ewNUUbYWPSho4J7FsnBSX8DqsEbHot9_-drxqle7-E.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/8b", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/8b/8b3VRw_Sg7AHBoUEtl-pD8Kl0JCDUwVO_UDXnEWTFC8.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/9j4Cn3Bg7rj2--N8lWHQ-aSIKt0CZxl7GNjlSaHb7L0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/9t", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/9t/9tskPO8cPRwEU4WKSW401X6HTXgIZWq3f_oRK3doRmc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/A1", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/A1/A1SEgJJSv7Jags4WoF0W2RYL295mnVszcr_ylelr8Qs.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/BQ", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/BQ/BQtyJR3ccqed7_s43p3BPj3IL18LWu1Fo1ZnzWC3qcc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/BQtyJR3ccqed7_s43p3BPj3IL18LWu1Fo1ZnzWC3qcc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Bx", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Bx/Bx-UB5UMXrZgolnJ2S-_Dqmz2x3B-pOUioyvhiLk85U.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/CG", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/CG/CG8g94hLztQB9P9eQcLq4g397J6t5yY2fBM6781UzIU.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Cy", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Cy/CyMO22fWi_h02uV841PlMAXrMeZHgNBiR7r4QsDasFU.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/DC", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/DC/DCjrERNLpUn0h_39QgyKP2SEj_ztEITtIf_Yt6l4Ons.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/DE", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/DE/DEINW1gPZfN8jHQiaEUXkAci3xV6Aq1XhHIfUDlFuZI.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/EM", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/EM/EMLT9zZMN-sck7pu8sMhRXp7ScTRWRb1t8UyEGuW6sY.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/F6", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/F6/F6rU8vGhp73xXYTB4oocVkDxyTjuw4IIAAU3F_tkxVg.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/GDQMRgyhp21p2xg_ITm3PdEDJXU-mgllQ2Mij3aSig4.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Gk", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Gk/GkzGL45U4eDCASTP-jH69Bqqn1QuLI83Hl7uH9br7NM.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/HmDZuiDF0OtgSoq7e2rtPrN16sGrNzJO1GrvmJBFqYs.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/IgIskv_-aTzPU_wM_Xr1bhk_nLAf8zYrjJonfNtAv6E.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Ir", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Ir/IrC3CI4UK9epEnLL0YUsgNBcThnYcTbaNjMC5uPv1Uo.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/IrC3CI4UK9epEnLL0YUsgNBcThnYcTbaNjMC5uPv1Uo.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/K_kmfMGNdm_wfvEnsfYglN-C8fj94rbCQJSnAI03mNU.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Kk", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Kk/KkFt0z0fhE3JMKKLAuhaZLRypV5zxOWEkwqzPvXcga4.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/LN4-PLL3b8DkfopaNEJ8U-nu9FuSHjEL4nELYoYCub8.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/LniLozFK0AHveFRcKmFzbr_tFBteoecaWgVBQbJwaL0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/M6sHCm5v32qRTBidHBsrTORDxaA9SCVgH3jnRn8iNLk.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/MN", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/MN/MN1e_LrVyR3aNfPSaw2wFbdnjecirT0mldx-SjT_oj4.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Mk", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Mk/MkmQjG68clE_f7Mq_FHyfHwMSm9rwtkec26otxHVXIE.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Mw", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Mw/MwYWZsJm1ste7zBLFfcVSVUsroBgKDJGIbOUXJAs2Ck.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/N6i2RwsdhSsA60KxpXlF7RYb3gLVu2mOQlWzPTMcNw4.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/O7", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/O7/O76sfqU0WEpkBo_1l-r1Cudc5HCo965eLIsEIL3aTkE.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/OH", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/OH/OH5sGA6GHD4qAgHK48pd9JOpj87ia6OgH20xrqBZ4uQ.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Ol", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Ol/OlImw7UgWtLs2DLafYZTcgku0dz__K03i797LWEpq_I.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/POVOiJI4HFOnKUqmwmHBWI-64koorns1IzsUwQdJwL0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/QB", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/QB/QBK6F9LPdIBQ4zZx6EoclnW8dhHBFXHw5HEvvkwW5BM.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Qk", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Qk/Qk70I8BICRve2U-far2u5YFGnw_iUCF8PHp0BUTosXc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Rg", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Rg/Rg0g0M_4DLsDPnXdymA6-XwEmUKAUosbktqFseoGBPA.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/TM6G95HBN6Kv_sF1SaADJyoSpQQSLmMnUXVn2f1jlnY.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Tt", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Tt/Tt7BFxeTDVYhFn2q6Bm8QvO0iZtqhpU3Py0aNUJ5kMI.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/U6", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/U6/U6DY0EQX7ivVHlU-Mckxvy1F8CLv81PGVie7lGAR5IM.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/UA", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/UA/UAYWm416Cm5D21fLcF-6Z5laZqeztvd9HINx5NhXQ2M.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/UF", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/UF/UFtgN0i1Oi7hYxXWi9UeyZeJyu8STn29o1JRQ4_z2Mo.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/UG", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/UG/UGvEaN6gnQMmC4dIqHsCaqNXpkBYrSq6LJTAj4yOu0o.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Um", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Um/Umm0xct07dhJS0LcSl4C7qjuqwe29RPrcArcHmpCH9E.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Uu", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Uu/UuOV1aKeAjpnuZekKjchUCIeZ2t61ZP4bx_N097pmXo.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/VC", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/VC/VCKtidQxue9KbDXM-_MSEOX-AwJEw3JfqjZTlhORFsc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/VN", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/VN/VNCapNKJLeponthNeFJhaBYs92UBT3P8PugENHP0474.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/VNCapNKJLeponthNeFJhaBYs92UBT3P8PugENHP0474.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Vz", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Vz/Vz-TATKC0c3E0YTxgKKvL-6zVhnrKZuTLimk0mFdkhI.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/W1", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/W1/W1I750hXtFauIXfdF_h8f0H6Eh9fPjn1nb3WDnJGJ_0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/W1I750hXtFauIXfdF_h8f0H6Eh9fPjn1nb3WDnJGJ_0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/W7", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/W7/W7d2rPy6yLypXS-89gBe3ECwqcl-qyP0kY8fZUYn3cA.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/WHb_lDwqFJu6BaJF8_AHwWMmgY9AIS0RUjJZATvHGy8.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/WkKqqsOutgzMPu_Ym1AolTwC2_fRzqxbvRFpO9Lgh5s.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Wo3dLIbJvLLO5QrL7Lxqf8CcxQPjTVgZjmAHci0eYlg.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Wy", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Wy/WysFSaiqCYDbaF-mGd5PfM4efJrLBs26kTHbQnU5Ly4.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/X8", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/X8/X8hH9P7zXF3_qaGOqjdJu-Q0DDh0CLtF6J4Rl_iipTc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/XJ", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/XJ/XJcXzqn-ILsbVbGUfL1V9-vMJa2RhZQXvIl1KD0qQKo.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Y0", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Y0/Y0NzY5PAN_S55uV44yAyi0fmpb55hlY9U-m6zmeaQ94.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Y4", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Y4/Y4YIxBzlr-voaaEbWbyhQAJ3Us31tSGEZW1eGouOvI0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/YS", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/YS/YSxkDLtbGGCU6Vpj9rLG6JFuS6nS8okz8xti5FamUXU.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/YY", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/YY/YYhr-BwbA5CTzaT_XI_ORMHpS3ej0MO1lLNgjFngUvM.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Yz", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Yz/YzAR55QBcbsqyp16R0iYCThLfwEMn78wC8S6iVZ8uRY.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/Yz/Yza7CX8B027EL_R0EHrj4lKZHsJAYero5W8ClbMzkSc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/_0", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/_0/_0e7qyz2hlaVUnFKkdSQ0FgTeYWclku4mrKGDA79Pi0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/aAuuIrhNOw2g3r2XWyh_9bURa6E2xn_5BCVi43ab-Ps.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/aQ", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/aQ/aQ4tjj4pb240O8fpsoxJkiwnGPIzMCqlnIOixgsTvng.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/a_", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/a_/a_rB_oXwjeDj_Ed9z78I_2XMuYttxCUTpq7p-SdyRKA.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/b7", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/b7/b7lBpkBxQaCxHBBRf-QF0CiQKnRE8kYGLUzgAPTjf_k.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/b7lBpkBxQaCxHBBRf-QF0CiQKnRE8kYGLUzgAPTjf_k.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/bE", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/bE/bEM-nbvZZlvHd-VVEeByhYFYw_PQoPz0Cih2JCzGCi4.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/bE/bE_yCKU0tNqBpbEeDVUDiUV4gvVvnGUjzkFYtfPfpkc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/c9", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/c9/c9zI3eluj1D9PPXiXebe-t9dJT4Ig0Sb-IbApxvnBBk.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/cO", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/cO/cOnGXbZBuECgR-W3wVHU8YytNMV49F-3ycqatcz0jaE.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/d6", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/d6/d6-acrFwj2KUSJ8gCI-lSkjYvxy5h6H-6Tu80yrkQlI.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/el", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/el/elwOvgAJ85O6bhimWI8AJJbAOJO-_oUSslLhr9GEfFc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/elwOvgAJ85O6bhimWI8AJJbAOJO-_oUSslLhr9GEfFc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/f2", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/f2/f24X6kv-eKoaf2WflS1e0_bGgTmQyZ2-sAiNvxSkYKo.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/f8", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/f8/f8WWrWAptfo1qSmHsTYrCJzb_vYG0wpQ9xvPvb0F6yI.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/f8WWrWAptfo1qSmHsTYrCJzb_vYG0wpQ9xvPvb0F6yI.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/gz", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/gz/gzCGY5IhGYaNB8gu2UxMSi2hql0AOr1zSuu-asymhbY.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/h3", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/h3/h3-zQAH3XpWfKP0e8v2Jpj4uIegZcxDNdBXm71Rmq9g.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/h3/h3R0ogDb3_Lv-eriMG2QniXy7gKnqx_JR1m4TuPmifE.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/hcPk5eM7VJPi2ZM7DxeJRgnl-LSUUd_GrYrFi2mj0Yc.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/iO", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/iO/iOprhQvDwUFWOwTIXAN7nqRSNUxtNegez2gEqgNlpVM.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/if", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/if/ifn-Hyn3GANzQ-CLgwbON3wMTpC4K9OyPRSIRjldZ1A.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/jC", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/jC/jCAdpJEQwSeSSrCluGFOJsHNE6VcAWViGJ0P-G0t6mA.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/jM", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/jM/jMfkNCJOENGI6boAyB_dmfF0GCAk4Jg1Njb0iJwVNkg.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/jV", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/jV/jVYDoH740FovMrSLk0lco9WCkrzffwRpddwN2ZBMsGQ.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/lA", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/lA/lAcnrF9oDGhlBUt2ovpl3xN6csxijQ9X5DNyvDCjNLk.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/lB", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/lB/lB-6XZIj11C1x8ixdiolbBYjzVf6baxZlalC-qg5UHk.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/l_", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/l_/l_tJ9WwBL9Q8XjxQN56nGuGtCrP7kGBvE8e76g8tRC0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/l_tJ9WwBL9Q8XjxQN56nGuGtCrP7kGBvE8e76g8tRC0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/lt", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/lt/ltHfS3at480sLxxMu-MaiUGV9g2lURx1vhZVOCVLojE.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/mz", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/mz/mza7QOu1wEmWaNoL3wpiHCroiylMRlg9bxjJtbEqZr0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/oq", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/oq/oqVkVOrnW7zIQqXe_2p4bZbOShNyg0DnfcM3Ww-Mqig.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/ph", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/ph/phskQTPSOqrdvCdPHZ_6JRzQL-kFbfkH76uZWJTDRAw.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/qY", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/qY/qY82QbvY3JrynAsb6pAVt8teuBrKIkOQ4Yw25pqPvE0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/qY82QbvY3JrynAsb6pAVt8teuBrKIkOQ4Yw25pqPvE0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/qk", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/qk/qkS311TykdauETodnLlHfo1qZIq9PPP_Pe6yJjnnMoY.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/qm", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/qm/qmXZpMdbZGPbadZJnUaTPei8HWkc6KipILWYqnKvAAA.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/r4", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/r4/r4bTG_zVpDgcHOhLZ3BAqCjLU0TFzUiEXjRPE36P-A8.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/rZ", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/rZ/rZh-weycsGh97B_CY_OGtw7vb9T4w_dUaSDierI0z8E.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/rj", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/rj/rjZFcBcZBcZzhVbfMwVzSmiPIhOG3lI-TPXRAVtpN6I.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/rjZFcBcZBcZzhVbfMwVzSmiPIhOG3lI-TPXRAVtpN6I.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/sI", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/sI/sI6ei0tAH9tdIE546hDUx79V9LxZykfRWqMcKzDkYTg.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/spcLVj7sWjAbzSoM2eka7e_jHpvNnVKRzuuDwd0m-pQ.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/uESU-1lgcxaDZ5lrTLLAlg8GUd-Igwr2gRavnaveWXU.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/ue", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/ue/ue3v4h_bRvmZHu9OmCth5E6MIP4HymD3ntOmdWMYJyQ.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/wc", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/wc/wcoBXcTCK49dLJ87Fs1xN8uVqscZ76vCcYZ8Apba-dg.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/wo", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/wo/woAXOH3NlZuNE-gjwApF3aSKNlbIbWZbAmIZrXwWvL0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/xq", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/xq/xql4V_K2Vr9TG-0PyQcazMrTMJOkQNWAmld-iJBpdEQ.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/y66z-kCCKl0cyGdSI_hQzkRNjxRApQedRgJVTu3BuRo.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/yJMqE54-t1my_dumhIg6mamMyRx0qADs7nY7cks0l-Q.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/yl", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/yl/yljvhTTX_qThC71Fdi_dvosdGbuSyMY_gfnZ-2NzTO0.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/zcBfaDXG5wGN1mPgJL8V1Y7f3VJ7zCZzS4q4zY6CkEM.cache", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/zg", "test/dummy_activerecord/tmp/cache/assets/sprockets/v3.0/zg/zgNNVNtQdWjhAQpnmcSnMrE6iSX9TTjzIEefhvjdVxw.cache", "test/dummy_activerecord/tmp/cache/assets/test", "test/dummy_activerecord/tmp/cache/assets/test/sprockets", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/070df203a09a9d4a368db8396165a105", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/13fe41fee1fe35b49d145bcc06610705", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/2a43a943daba23e5e37e8edf97cb0bdb", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/2f5173deea6c795b8fdde723bb4b63af", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/357970feca3ac29060c1e3861e2c0953", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/4d062bee73f43586c17d29a175f6243e", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/58e369b37e5157ea746a485eea17e9f7", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/7ae10239eda2588a95fdcc7d871bef52", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/8d5d60255600aa010a32e1d1a9bc6db6", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/b3d9b0e88cdded276ebdce333e338a85", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/cffd775d018f68ce5dba1ee0d951a994", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/d771ace226fc8215a3572e0aa35bb0d6", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/e6e7b55d41c79514c44c3c8a45c17c60", "test/dummy_activerecord/tmp/cache/assets/test/sprockets/f7cbd26ba1d28d48de824f0e94586655", "test/dummy_activerecord/tmp/cache/sprockets", "test/dummy_activerecord/tmp/cache/sprockets/v3.0", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/0sUVkLi2-TZrZ_FT_mDeGoWMwGpS48yEfEYxihy5nmI.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/2-0w2lrUYGJTWSS8ctq_qa38uSr88P2L-iV2bXyyGuA.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/38HqlC3fOtaqYgpSbnmBJox6dlNY7sjNBTzMNCFx4Mc.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/43SLVxa0HLJIPQPZDlXpd9_dnIUqeCXVwOA2A9V0Vsc.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/5g7dhxVp4YbZmFw_-T3aU2oYq2Z9Jgtps0CKneXYSS0.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/7dUbHTwNQg5wkMpfSRWE_RDbzc7O3Kwh7s07ubAzXxY.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/9j4Cn3Bg7rj2--N8lWHQ-aSIKt0CZxl7GNjlSaHb7L0.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/B5aB2pc11WJxcU-HyLFLnLC96fMFlug6Amz8hS7jDj0.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/BQtyJR3ccqed7_s43p3BPj3IL18LWu1Fo1ZnzWC3qcc.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/CLp73dIq-CQDXyYTsWbjSxI4NqvVR1Uci51S3Rt83yc.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/F7q3Bp8Hvzh5mn9AJr9g9uo5GfbZkigepPO5ZXkTzGY.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/GBhwl-B9glhyk8ElvTWqe6I65UKde5wR9fVxPwwJ2Hg.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/GDQMRgyhp21p2xg_ITm3PdEDJXU-mgllQ2Mij3aSig4.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/HmDZuiDF0OtgSoq7e2rtPrN16sGrNzJO1GrvmJBFqYs.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/IXVtyHRBEhzVHqrNmcus7pvHXuNfpReCzYzxhB7bBPA.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/IgIskv_-aTzPU_wM_Xr1bhk_nLAf8zYrjJonfNtAv6E.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/IrC3CI4UK9epEnLL0YUsgNBcThnYcTbaNjMC5uPv1Uo.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/K_kmfMGNdm_wfvEnsfYglN-C8fj94rbCQJSnAI03mNU.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/KzZa0OWunZJvtU11r_4UKZgCItVQkohjptcFbJ570cU.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/LN4-PLL3b8DkfopaNEJ8U-nu9FuSHjEL4nELYoYCub8.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/LniLozFK0AHveFRcKmFzbr_tFBteoecaWgVBQbJwaL0.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/M0WOwkZpyk3ShmXHNFhdl4BgfEyvgZuzn40Fww00RYM.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/M6sHCm5v32qRTBidHBsrTORDxaA9SCVgH3jnRn8iNLk.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/N6i2RwsdhSsA60KxpXlF7RYb3gLVu2mOQlWzPTMcNw4.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/POVOiJI4HFOnKUqmwmHBWI-64koorns1IzsUwQdJwL0.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/TM6G95HBN6Kv_sF1SaADJyoSpQQSLmMnUXVn2f1jlnY.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/TsyULHo-Ep-IDDhu6nN9frFLJNe7hg_op-o6g3Ycp48.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/VNCapNKJLeponthNeFJhaBYs92UBT3P8PugENHP0474.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/W1I750hXtFauIXfdF_h8f0H6Eh9fPjn1nb3WDnJGJ_0.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/WHb_lDwqFJu6BaJF8_AHwWMmgY9AIS0RUjJZATvHGy8.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/WkKqqsOutgzMPu_Ym1AolTwC2_fRzqxbvRFpO9Lgh5s.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/Wo3dLIbJvLLO5QrL7Lxqf8CcxQPjTVgZjmAHci0eYlg.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/aAuuIrhNOw2g3r2XWyh_9bURa6E2xn_5BCVi43ab-Ps.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/aFlSrtCQNya8JILRa5652nUEY0ACPTd_pGU3yXuOx9o.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/b7lBpkBxQaCxHBBRf-QF0CiQKnRE8kYGLUzgAPTjf_k.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/c5Auc2IFYhhN0woGElqbdz3HoROtMJX4TmUNekopcik.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/degszJUXEQsWvjrjcbxJNLqH6tFybiuIClFdPT8qgyE.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/elwOvgAJ85O6bhimWI8AJJbAOJO-_oUSslLhr9GEfFc.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/f8WWrWAptfo1qSmHsTYrCJzb_vYG0wpQ9xvPvb0F6yI.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/hcPk5eM7VJPi2ZM7DxeJRgnl-LSUUd_GrYrFi2mj0Yc.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/kw00uOxe2W3DagBUVa0aLGOXTAH8i5-PNNpxyDJXkR0.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/l_tJ9WwBL9Q8XjxQN56nGuGtCrP7kGBvE8e76g8tRC0.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/neudolVI7_nIBYKcEI1npz278d2-LSi4Y8fK5Z2ctTY.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/qY82QbvY3JrynAsb6pAVt8teuBrKIkOQ4Yw25pqPvE0.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/qg_wftmO7jS_a89vOJgaK0THZaNR8KUscoQjo9oWPVU.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/rjZFcBcZBcZzhVbfMwVzSmiPIhOG3lI-TPXRAVtpN6I.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/smkGipMoyg_yBW7rvwuP9Ci_fdWK1w68wbhDgjEjHcw.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/smpyMrlMLm6NqLzR4-8kAty0B7CHGePCuc4KKNIU43Y.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/spcLVj7sWjAbzSoM2eka7e_jHpvNnVKRzuuDwd0m-pQ.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/uESU-1lgcxaDZ5lrTLLAlg8GUd-Igwr2gRavnaveWXU.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/y66z-kCCKl0cyGdSI_hQzkRNjxRApQedRgJVTu3BuRo.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/yJMqE54-t1my_dumhIg6mamMyRx0qADs7nY7cks0l-Q.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/ypxuZOcRS1MWu4o3mfAWRIDDdEl4uWHuDdXkvQoohc4.cache", "test/dummy_activerecord/tmp/cache/sprockets/v3.0/zcBfaDXG5wGN1mPgJL8V1Y7f3VJ7zCZzS4q4zY6CkEM.cache", "test/dummy_mongoid", "test/dummy_mongoid/README.rdoc", "test/dummy_mongoid/Rakefile", "test/dummy_mongoid/app", "test/dummy_mongoid/app/assets", "test/dummy_mongoid/app/assets/javascripts", "test/dummy_mongoid/app/assets/javascripts/application.js", "test/dummy_mongoid/app/assets/javascripts/pages.js", "test/dummy_mongoid/app/assets/stylesheets", "test/dummy_mongoid/app/assets/stylesheets/application.css", "test/dummy_mongoid/app/assets/stylesheets/pages.css", "test/dummy_mongoid/app/controllers", "test/dummy_mongoid/app/controllers/application_controller.rb", "test/dummy_mongoid/app/controllers/maestrano", "test/dummy_mongoid/app/controllers/maestrano/account", "test/dummy_mongoid/app/controllers/maestrano/account/group_users_controller.rb", "test/dummy_mongoid/app/controllers/maestrano/account/groups_controller.rb", "test/dummy_mongoid/app/controllers/maestrano/auth", "test/dummy_mongoid/app/controllers/maestrano/auth/saml_controller.rb", "test/dummy_mongoid/app/controllers/pages_controller.rb", "test/dummy_mongoid/app/helpers", "test/dummy_mongoid/app/helpers/application_helper.rb", "test/dummy_mongoid/app/helpers/pages_helper.rb", "test/dummy_mongoid/app/mailers", "test/dummy_mongoid/app/models", "test/dummy_mongoid/app/models/mno_crew.rb", "test/dummy_mongoid/app/models/mno_monster.rb", "test/dummy_mongoid/app/models/monster.rb", "test/dummy_mongoid/app/views", "test/dummy_mongoid/app/views/layouts", "test/dummy_mongoid/app/views/layouts/application.html.erb", "test/dummy_mongoid/app/views/pages", "test/dummy_mongoid/app/views/pages/home.html.erb", "test/dummy_mongoid/config", "test/dummy_mongoid/config.ru", "test/dummy_mongoid/config/application.rb", "test/dummy_mongoid/config/boot.rb", "test/dummy_mongoid/config/environment.rb", "test/dummy_mongoid/config/environments", "test/dummy_mongoid/config/environments/development.rb", "test/dummy_mongoid/config/environments/production.rb", "test/dummy_mongoid/config/environments/test.rb", "test/dummy_mongoid/config/initializers", "test/dummy_mongoid/config/initializers/backtrace_silencers.rb", "test/dummy_mongoid/config/initializers/inflections.rb", "test/dummy_mongoid/config/initializers/maestrano.rb", "test/dummy_mongoid/config/initializers/mime_types.rb", "test/dummy_mongoid/config/initializers/secret_token.rb", "test/dummy_mongoid/config/initializers/session_store.rb", "test/dummy_mongoid/config/initializers/wrap_parameters.rb", "test/dummy_mongoid/config/locales", "test/dummy_mongoid/config/locales/en.yml", "test/dummy_mongoid/config/mongoid.yml", "test/dummy_mongoid/config/routes.rb", "test/dummy_mongoid/db", "test/dummy_mongoid/db/migrate", "test/dummy_mongoid/db/migrate/20140526125222_create_monsters.rb", "test/dummy_mongoid/db/migrate/20140526125242_create_admin_monsters.rb", "test/dummy_mongoid/db/migrate/20140526144828_create_mno_monsters.rb", "test/dummy_mongoid/db/migrate/20140526151139_create_mno_crews.rb", "test/dummy_mongoid/db/schema.rb", "test/dummy_mongoid/lib", "test/dummy_mongoid/lib/assets", "test/dummy_mongoid/log", "test/dummy_mongoid/public", "test/dummy_mongoid/public/404.html", "test/dummy_mongoid/public/422.html", "test/dummy_mongoid/public/500.html", "test/dummy_mongoid/public/favicon.ico", "test/dummy_mongoid/script", "test/dummy_mongoid/script/rails", "test/generators", "test/generators/group", "test/generators/group/active_record_generator_test.rb", "test/generators/group/mongoid_generator_test.rb", "test/generators/group_generator_test.rb", "test/generators/install_generator_test.rb", "test/generators/user", "test/generators/user/active_record_generator_test.rb", "test/generators/user/mongoid_generator_test.rb", "test/generators/user_generator_test.rb", "test/maestrano-rails_test.rb", "test/models", "test/models/maestrano_group_via_test.rb", "test/models/maestrano_user_via_test.rb", "test/test_files", "test/test_files/config", "test/test_files/config/routes.rb", "test/test_helper.rb", "test/tmp", "test/tmp/app", "test/tmp/app/models", "test/tmp/app/models/monster.rb", "test/tmp/db", "test/tmp/db/migrate", "test/tmp/db/migrate/20161018205552_add_maestrano_to_monsters.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 4.2"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<haml-rails>, [">= 0"])
      s.add_runtime_dependency(%q<mongoid>, [">= 0"])
      s.add_runtime_dependency(%q<maestrano>, ["= 1.0.0.pre.RC8"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<activerecord-jdbcsqlite3-adapter>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 4.2"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<haml-rails>, [">= 0"])
      s.add_dependency(%q<mongoid>, [">= 0"])
      s.add_dependency(%q<maestrano>, ["= 1.0.0.pre.RC8"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<activerecord-jdbcsqlite3-adapter>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 4.2"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<haml-rails>, [">= 0"])
    s.add_dependency(%q<mongoid>, [">= 0"])
    s.add_dependency(%q<maestrano>, ["= 1.0.0.pre.RC8"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<activerecord-jdbcsqlite3-adapter>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

