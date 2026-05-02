.class public Lcom/rebel/module/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.java"


# instance fields
.field private blacklistInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private botTokenInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private chatIdInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private configManager:Lcom/rebel/module/ConfigManager;

.field private fixGrowwSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private fixKreditBeeSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private fixNaviSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private fixPhonePeSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private fixZetSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private footerTextInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private gmsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private growwMobileNumberInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private growwMobileSettings:Landroid/widget/LinearLayout;

.field private growwStatusText:Landroid/widget/TextView;

.field private hookSmsSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private isLoadingConfig:Z

.field private mobileNumberInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private mobileSettings:Landroid/widget/LinearLayout;

.field private numberPrefixInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private phonePeStatusText:Landroid/widget/TextView;

.field private requestDefaultSmsAppButton:Lcom/google/android/material/button/MaterialButton;

.field private senderIdSettings:Landroid/widget/LinearLayout;

.field private serviceStatusText:Landroid/widget/TextView;

.field private smartTokenSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private smsHooking2Switch:Landroidx/appcompat/widget/SwitchCompat;

.field private smsRoleLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private smsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private spoofDirectionSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private spoofMobileSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private spoofSenderSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private spoofTargetGroup:Landroid/widget/RadioGroup;

.field private superMoneyBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private telegramSettings:Landroid/widget/LinearLayout;

.field private verifyTelegramButton:Lcom/google/android/material/button/MaterialButton;

.field private versionText:Landroid/widget/TextView;

.field private whitelistInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private whitelistModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private yesBankBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private zetSecurityBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private zetSrcPrefixSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private zetStatusText:Landroid/widget/TextView;

.field private zetUpiSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method static bridge synthetic -$$Nest$fgetisLoadingConfig(Lcom/rebel/module/SettingsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msaveConfig(Lcom/rebel/module/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    return-void
.end method

.method private getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Lcom/google/android/material/textfield/TextInputEditText;

    .line 525
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private isGrowwInstalled()Z
    .locals 3

    .line 616
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.nextbillion.groww"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    const/4 v0, 0x1

    return v0

    .line 618
    :catch_0
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private isPhonePeInstalled()Z
    .locals 3

    .line 598
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.phonepe.app"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    const/4 v0, 0x1

    return v0

    .line 600
    :catch_0
    move-exception v1

    .line 601
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private isZetInstalled()Z
    .locals 3

    .line 607
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "in.magnetapp"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    const/4 v0, 0x1

    return v0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private loadConfig()V
    .locals 5

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    .line 205
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v1}, Lcom/rebel/module/ConfigManager;->ensureConfigFileExists()V

    .line 206
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v1}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v1

    .line 207
    .local v1, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    if-eqz v1, :cond_e

    .line 208
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->hookSmsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 209
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->spoofSenderSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 210
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->spoofMobileSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 211
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->spoofDirectionSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 212
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->gmsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 213
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->smsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 215
    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->botTokenInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_0
    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->chatIdInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_1
    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->mobileNumberInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_2
    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 224
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->whitelistInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_3
    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 226
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->blacklistInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->whitelistModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist_mode:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 228
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->fixNaviSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_navi:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 229
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->fixPhonePeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_phonepe:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 230
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->fixKreditBeeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_kreditbee:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 231
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->fixZetSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zet:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 232
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->fixGrowwSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 233
    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 234
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->growwMobileNumberInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_5
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->zetUpiSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->zet_upi:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 236
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->zetSrcPrefixSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->zet_src_prefix:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 237
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->zetSecurityBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->zet_security_bypass:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 238
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->superMoneyBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->supermoney_bypass:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 241
    const-string v2, "phonepe"

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 242
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->spoofTargetGroup:Landroid/widget/RadioGroup;

    sget v3, Lcom/rebel/module/R$id;->radioPhonePe:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 243
    :cond_6
    const-string v2, "kreditbee"

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    iget-object v3, p0, Lcom/rebel/module/SettingsFragment;->spoofTargetGroup:Landroid/widget/RadioGroup;

    .line 243
    if-eqz v2, :cond_7

    .line 244
    :try_start_1
    sget v2, Lcom/rebel/module/R$id;->radioKreditBee:I

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 246
    :cond_7
    sget v2, Lcom/rebel/module/R$id;->radioNavi:I

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 248
    :goto_0
    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 249
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->footerTextInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 251
    :cond_8
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->footerTextInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "Module by @ParentGuard_Owner | DM to Buy"

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_1
    iget-object v2, v1, Lcom/rebel/module/ConfigManager$ConfigData;->number_prefix:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 254
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->numberPrefixInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->number_prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_9
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->smartTokenSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->smart_token:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 256
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->yesBankBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->yesbank_bypass:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 257
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->smsHooking2Switch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->sms_hooking_2:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 260
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->telegramSettings:Landroid/widget/LinearLayout;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_a

    move v3, v0

    goto :goto_2

    :cond_a
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->senderIdSettings:Landroid/widget/LinearLayout;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    if-eqz v3, :cond_b

    move v3, v0

    goto :goto_3

    :cond_b
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->mobileSettings:Landroid/widget/LinearLayout;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    if-eqz v3, :cond_c

    move v3, v0

    goto :goto_4

    :cond_c
    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->growwMobileSettings:Landroid/widget/LinearLayout;

    iget-boolean v3, v1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    if-eqz v3, :cond_d

    move v4, v0

    :cond_d
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    .end local v1    # "config":Lcom/rebel/module/ConfigManager$ConfigData;
    :cond_e
    goto :goto_5

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    iput-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    .line 269
    return-void
.end method

.method private requestDefaultSmsApp()V
    .locals 4

    .line 580
    const-string v0, "android.app.role.SMS"

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 581
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 582
    .local v1, "roleManager":Landroid/app/role/RoleManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 584
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->smsRoleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v2, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 586
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "roleManager":Landroid/app/role/RoleManager;
    :cond_0
    goto :goto_0

    .line 587
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "package"

    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0, v0}, Lcom/rebel/module/SettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    goto :goto_1

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private saveConfig()V
    .locals 3

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->readConfigFromFile()Lcom/rebel/module/ConfigManager$ConfigData;

    move-result-object v0

    .line 469
    .local v0, "config":Lcom/rebel/module/ConfigManager$ConfigData;
    if-nez v0, :cond_0

    .line 470
    new-instance v1, Lcom/rebel/module/ConfigManager$ConfigData;

    invoke-direct {v1}, Lcom/rebel/module/ConfigManager$ConfigData;-><init>()V

    move-object v0, v1

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->hookSmsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    .line 473
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->spoofSenderSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    .line 474
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->spoofMobileSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    .line 475
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->spoofDirectionSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    .line 476
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->gmsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    .line 477
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->smsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    .line 479
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->botTokenInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v1}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->chatIdInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v1}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->mobileNumberInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v1}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    .line 483
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->whitelistInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v1}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->blacklistInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v1}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    .line 485
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->whitelistModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist_mode:Z

    .line 486
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->fixNaviSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_navi:Z

    .line 487
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->fixPhonePeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_phonepe:Z

    .line 488
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->fixKreditBeeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_kreditbee:Z

    .line 489
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->fixZetSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zet:Z

    .line 490
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->zetUpiSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_upi:Z

    .line 491
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->zetSrcPrefixSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_src_prefix:Z

    .line 492
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->zetSecurityBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_security_bypass:Z

    .line 493
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->superMoneyBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->supermoney_bypass:Z

    .line 494
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->fixGrowwSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    .line 495
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->growwMobileNumberInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v1}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    .line 498
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->spoofTargetGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 499
    .local v1, "checkedId":I
    sget v2, Lcom/rebel/module/R$id;->radioPhonePe:I

    if-ne v1, v2, :cond_1

    .line 500
    const-string v2, "phonepe"

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    .line 501
    const-string v2, "AX-PPEZIN"

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    .line 502
    const-string v2, "{otp} is your OTP for PhonePe UPI Registration. Valid for 10 mins. Do not share with anyone."

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_1
    sget v2, Lcom/rebel/module/R$id;->radioKreditBee:I

    if-ne v1, v2, :cond_2

    .line 504
    const-string v2, "kreditbee"

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    .line 505
    const-string v2, "AX-KRDTBE"

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    .line 506
    const-string v2, "{otp} is your OTP for KreditBee. Valid for 10 mins. Do not share with anyone."

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    goto :goto_0

    .line 508
    :cond_2
    const-string v2, "navi"

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    .line 509
    const-string v2, "AX-YESBNK-S"

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    .line 510
    const-string v2, "<#> {otp} is your OTP for Twid Rewards Global Pvt Ltd UPI Registration. Valid for 45 secs. Do not share with anyone. Report to your bank if not you - Yes Bank QGi9Hxz60aL CZYTyoshV5q"

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    .line 512
    :goto_0
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->footerTextInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v2}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    .line 513
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->numberPrefixInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v2}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->number_prefix:Ljava/lang/String;

    .line 514
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->smartTokenSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->smart_token:Z

    .line 515
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->yesBankBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->yesbank_bypass:Z

    .line 516
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->smsHooking2Switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_hooking_2:Z

    .line 518
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v2, v0}, Lcom/rebel/module/ConfigManager;->writeConfigToFile(Lcom/rebel/module/ConfigManager$ConfigData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    nop

    .end local v0    # "config":Lcom/rebel/module/ConfigManager$ConfigData;
    .end local v1    # "checkedId":I
    goto :goto_1

    .line 519
    :catch_0
    move-exception v0

    .line 522
    :goto_1
    return-void
.end method

.method private setupSwitchListeners()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->hookSmsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->spoofSenderSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 286
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->spoofMobileSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 293
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->spoofDirectionSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->gmsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 305
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->smsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 311
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->whitelistModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 317
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->fixNaviSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 326
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->fixPhonePeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 335
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->fixKreditBeeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 344
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->fixZetSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 353
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->zetUpiSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->zetSrcPrefixSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 371
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->zetSecurityBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 381
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->superMoneyBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 391
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->fixGrowwSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda22;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 402
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->spoofTargetGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda23;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 413
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->smartTokenSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda24;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 422
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->yesBankBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda25;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 432
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->smsHooking2Switch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 440
    return-void
.end method

.method private setupTextListeners()V
    .locals 2

    .line 443
    new-instance v0, Lcom/rebel/module/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/rebel/module/SettingsFragment$1;-><init>(Lcom/rebel/module/SettingsFragment;)V

    .line 459
    .local v0, "saveWatcher":Landroid/text/TextWatcher;
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->botTokenInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 460
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->chatIdInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 461
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->footerTextInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 462
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->numberPrefixInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 463
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->growwMobileNumberInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 464
    return-void
.end method

.method private verifyTelegram()V
    .locals 5

    .line 529
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->botTokenInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v0}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "botToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->chatIdInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0, v1}, Lcom/rebel/module/SettingsFragment;->getText(Lcom/google/android/material/textfield/TextInputEditText;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "chatId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->verifyTelegramButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 539
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->verifyTelegramButton:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "Verifying\u2026"

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 541
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v0, v1}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/rebel/module/SettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 575
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 576
    return-void

    .line 533
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "\u26a0\ufe0f Enter Bot Token and Chat ID first"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 535
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-src-module-SettingsFragment(Landroidx/activity/result/ActivityResult;)V
    .locals 3
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 73
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u2705 Set as default SMS app"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    :cond_0
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-src-module-SettingsFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 190
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->verifyTelegram()V

    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-src-module-SettingsFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 193
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->requestDefaultSmsApp()V

    return-void
.end method

.method synthetic lambda$setupSwitchListeners$10$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 318
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 319
    return-void

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 321
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 322
    if-eqz p2, :cond_1

    const-string v1, "\u2705 Navi bypass enabled \u2014 restart Navi app"

    goto :goto_0

    :cond_1
    const-string v1, "\u274c Navi bypass disabled"

    .line 321
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 324
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$11$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 327
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 328
    return-void

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 330
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 331
    if-eqz p2, :cond_1

    const-string v1, "\ud83d\udc9c PhonePe Fix enabled \u2014 reboot to apply"

    goto :goto_0

    :cond_1
    const-string v1, "PhonePe Fix disabled \u2014 reboot to apply"

    .line 330
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$12$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 336
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 337
    return-void

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 339
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 340
    if-eqz p2, :cond_1

    const-string v1, "\ud83c\udfe6 KreditBee Fix enabled \u2014 restart KreditBee app"

    goto :goto_0

    :cond_1
    const-string v1, "KreditBee Fix disabled"

    .line 339
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$13$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 345
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 346
    return-void

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 348
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 349
    if-eqz p2, :cond_1

    const-string v1, "\ud83e\uddf2 ZetFix enabled \u2014 reboot to apply"

    goto :goto_0

    :cond_1
    const-string v1, "ZetFix disabled \u2014 reboot to apply"

    .line 348
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 351
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$14$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 354
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 355
    return-void

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 357
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 358
    if-eqz p2, :cond_1

    const-string v1, "\u26a1 Zet UPI Hook enabled \u2014 reboot to apply"

    goto :goto_0

    :cond_1
    const-string v1, "Zet UPI Hook disabled \u2014 reboot to apply"

    .line 357
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$15$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 363
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 364
    return-void

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 366
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 367
    if-eqz p2, :cond_1

    const-string v1, "SRC_ prefix enabled"

    goto :goto_0

    :cond_1
    const-string v1, "SRC_ prefix disabled"

    .line 366
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$16$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 372
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 373
    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 375
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 376
    if-eqz p2, :cond_1

    const-string v1, "\ud83d\udd12 Security Bypass enabled \u2014 force-stop ZET to apply"

    goto :goto_0

    .line 377
    :cond_1
    const-string v1, "Security Bypass disabled"

    :goto_0
    nop

    .line 375
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$17$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 382
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 383
    return-void

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 385
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 386
    if-eqz p2, :cond_1

    const-string v1, "\ud83d\udcb8 SuperMoney Bypass enabled \u2014 force-stop SuperMoney to apply"

    goto :goto_0

    .line 387
    :cond_1
    const-string v1, "SuperMoney Bypass disabled"

    :goto_0
    nop

    .line 385
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 389
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$18$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 392
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 393
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->growwMobileSettings:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 396
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 397
    if-eqz p2, :cond_2

    const-string v2, "\ud83c\udf31 Groww Fix enabled \u2014 force-stop Groww to apply"

    goto :goto_1

    .line 398
    :cond_2
    const-string v2, "Groww Fix disabled"

    :goto_1
    nop

    .line 396
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 400
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$19$com-src-module-SettingsFragment(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 403
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 404
    return-void

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 406
    sget v0, Lcom/rebel/module/R$id;->radioPhonePe:I

    if-ne p2, v0, :cond_1

    const-string v0, "PhonePe"

    goto :goto_0

    .line 407
    :cond_1
    sget v0, Lcom/rebel/module/R$id;->radioKreditBee:I

    if-ne p2, v0, :cond_2

    const-string v0, "KreditBee"

    goto :goto_0

    :cond_2
    const-string v0, "Navi"

    :goto_0
    nop

    .line 408
    .local v0, "target":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83c\udfaf Spoof target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2014 active on next SMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 411
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$20$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 414
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 415
    return-void

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 417
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 418
    if-eqz p2, :cond_1

    const-string v1, "\u2705 Smart Token enabled"

    goto :goto_0

    :cond_1
    const-string v1, "Smart Token disabled"

    .line 417
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 420
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$21$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 423
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 424
    return-void

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 426
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 427
    if-eqz p2, :cond_1

    const-string v1, "\ud83c\udfe6 YesBank Bypass enabled \u2014 SMS passthrough active"

    goto :goto_0

    .line 428
    :cond_1
    const-string v1, "YesBank Bypass disabled \u2014 SMS blocking resumed"

    :goto_0
    nop

    .line 426
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 430
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$22$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 433
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 434
    return-void

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 436
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 437
    if-eqz p2, :cond_1

    const-string v1, "\ud83d\udea8 SMS Hooking 2 enabled (System Level)"

    goto :goto_0

    :cond_1
    const-string v1, "SMS Hooking 2 disabled"

    .line 436
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 439
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$3$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 273
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 274
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->telegramSettings:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 277
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$4$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 280
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 281
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->senderIdSettings:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 284
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$5$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 287
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 288
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->mobileSettings:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 291
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$6$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 294
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 295
    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 297
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$7$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 300
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 301
    return-void

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 303
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$8$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 306
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 307
    return-void

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 309
    return-void
.end method

.method synthetic lambda$setupSwitchListeners$9$com-src-module-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 312
    iget-boolean v0, p0, Lcom/rebel/module/SettingsFragment;->isLoadingConfig:Z

    if-eqz v0, :cond_0

    .line 313
    return-void

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->saveConfig()V

    .line 315
    return-void
.end method

.method synthetic lambda$verifyTelegram$23$com-src-module-SettingsFragment(I)V
    .locals 4
    .param p1, "responseCode"    # I

    .line 554
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->verifyTelegramButton:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 555
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->verifyTelegramButton:Lcom/google/android/material/button/MaterialButton;

    sget v1, Lcom/rebel/module/R$string;->verify_telegram:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 556
    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u2705 Telegram connection verified!"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u274c Telegram error: HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 564
    :goto_0
    return-void
.end method

.method synthetic lambda$verifyTelegram$24$com-src-module-SettingsFragment(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 569
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->verifyTelegramButton:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 570
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment;->verifyTelegramButton:Lcom/google/android/material/button/MaterialButton;

    sget v1, Lcom/rebel/module/R$string;->verify_telegram:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 571
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 572
    return-void
.end method

.method synthetic lambda$verifyTelegram$25$com-src-module-SettingsFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "botToken"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;

    .line 543
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2705 Rebel Module Connected Successfully!\n\n\ud83d\udd50 Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 546
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\ud83d\udcf1 Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "testMsg":Ljava/lang/String;
    invoke-static {p1, p2, v0}, Lcom/rebel/module/NativeBridge;->nativeVerifyTelegram(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 552
    .local v1, "responseCode":I
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v1}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/rebel/module/SettingsFragment;I)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .end local v0    # "testMsg":Ljava/lang/String;
    .end local v1    # "responseCode":I
    :cond_0
    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda15;-><init>(Lcom/rebel/module/SettingsFragment;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/rebel/module/SettingsFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->smsRoleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    sget v0, Lcom/rebel/module/R$layout;->fragment_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 198
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 199
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->loadConfig()V

    .line 200
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    :try_start_0
    new-instance v0, Lcom/rebel/module/ConfigManager;

    invoke-direct {v0}, Lcom/rebel/module/ConfigManager;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->configManager:Lcom/rebel/module/ConfigManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 97
    :goto_0
    sget v0, Lcom/rebel/module/R$id;->hookSmsSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->hookSmsSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 98
    sget v0, Lcom/rebel/module/R$id;->spoofSenderSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->spoofSenderSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 99
    sget v0, Lcom/rebel/module/R$id;->spoofMobileSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->spoofMobileSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 100
    sget v0, Lcom/rebel/module/R$id;->spoofDirectionSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->spoofDirectionSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 101
    sget v0, Lcom/rebel/module/R$id;->gmsSpoofSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->gmsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 102
    sget v0, Lcom/rebel/module/R$id;->smsSpoofSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->smsSpoofSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 103
    sget v0, Lcom/rebel/module/R$id;->whitelistModeSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->whitelistModeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 104
    sget v0, Lcom/rebel/module/R$id;->fixNaviSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->fixNaviSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 105
    sget v0, Lcom/rebel/module/R$id;->fixPhonePeSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->fixPhonePeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 106
    sget v0, Lcom/rebel/module/R$id;->fixKreditBeeSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->fixKreditBeeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 107
    sget v0, Lcom/rebel/module/R$id;->spoofTargetGroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->spoofTargetGroup:Landroid/widget/RadioGroup;

    .line 108
    sget v0, Lcom/rebel/module/R$id;->phonePeStatusText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/SettingsFragment;->phonePeStatusText:Landroid/widget/TextView;

    .line 111
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->isPhonePeInstalled()Z

    move-result v0

    .line 112
    .local v0, "phonePeInstalled":Z
    nop

    .line 116
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->phonePeStatusText:Landroid/widget/TextView;

    .line 112
    const v2, -0xb350b0

    const/16 v3, -0x6800

    if-eqz v0, :cond_0

    .line 113
    const-string v4, "\u2705 PhonePe app detected (com.phonepe.app)"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->phonePeStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 116
    :cond_0
    const-string v4, "\u26a0\ufe0f PhonePe app not installed \u2014 hooks will be inactive"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/rebel/module/SettingsFragment;->phonePeStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    :goto_1
    sget v1, Lcom/rebel/module/R$id;->fixZetSwitch:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/rebel/module/SettingsFragment;->fixZetSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 121
    sget v1, Lcom/rebel/module/R$id;->zetStatusText:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/rebel/module/SettingsFragment;->zetStatusText:Landroid/widget/TextView;

    .line 123
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->isZetInstalled()Z

    move-result v1

    .line 124
    .local v1, "zetInstalled":Z
    nop

    .line 128
    iget-object v4, p0, Lcom/rebel/module/SettingsFragment;->zetStatusText:Landroid/widget/TextView;

    .line 124
    if-eqz v1, :cond_1

    .line 125
    const-string v5, "\u2705 Zet (MagnetApp) detected (in.magnetapp)"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v4, p0, Lcom/rebel/module/SettingsFragment;->zetStatusText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 128
    :cond_1
    const-string v5, "\u26a0\ufe0f Zet (MagnetApp) not installed \u2014 hooks will be inactive"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v4, p0, Lcom/rebel/module/SettingsFragment;->zetStatusText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :goto_2
    sget v4, Lcom/rebel/module/R$id;->zetUpiSwitch:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v4, p0, Lcom/rebel/module/SettingsFragment;->zetUpiSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 133
    sget v4, Lcom/rebel/module/R$id;->zetSrcPrefixSwitch:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v4, p0, Lcom/rebel/module/SettingsFragment;->zetSrcPrefixSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 134
    sget v4, Lcom/rebel/module/R$id;->zetSecurityBypassSwitch:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v4, p0, Lcom/rebel/module/SettingsFragment;->zetSecurityBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 135
    sget v4, Lcom/rebel/module/R$id;->superMoneyBypassSwitch:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v4, p0, Lcom/rebel/module/SettingsFragment;->superMoneyBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 137
    sget v4, Lcom/rebel/module/R$id;->fixGrowwSwitch:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v4, p0, Lcom/rebel/module/SettingsFragment;->fixGrowwSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 138
    sget v4, Lcom/rebel/module/R$id;->growwMobileNumberInput:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v4, p0, Lcom/rebel/module/SettingsFragment;->growwMobileNumberInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 139
    sget v4, Lcom/rebel/module/R$id;->growwMobileSettings:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/rebel/module/SettingsFragment;->growwMobileSettings:Landroid/widget/LinearLayout;

    .line 140
    sget v4, Lcom/rebel/module/R$id;->growwStatusText:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/rebel/module/SettingsFragment;->growwStatusText:Landroid/widget/TextView;

    .line 143
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->isGrowwInstalled()Z

    move-result v4

    .line 144
    .local v4, "growwInstalled":Z
    nop

    .line 148
    iget-object v5, p0, Lcom/rebel/module/SettingsFragment;->growwStatusText:Landroid/widget/TextView;

    .line 144
    if-eqz v4, :cond_2

    .line 145
    const-string v3, "\u2705 Groww app detected (com.groww.app)"

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v3, p0, Lcom/rebel/module/SettingsFragment;->growwStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 148
    :cond_2
    const-string v2, "\u26a0\ufe0f Groww app not installed \u2014 hooks will be inactive"

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->growwStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    :goto_3
    sget v2, Lcom/rebel/module/R$id;->botTokenInput:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->botTokenInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 153
    sget v2, Lcom/rebel/module/R$id;->chatIdInput:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->chatIdInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 154
    sget v2, Lcom/rebel/module/R$id;->mobileNumberInput:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->mobileNumberInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 155
    sget v2, Lcom/rebel/module/R$id;->whitelistInput:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->whitelistInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 156
    sget v2, Lcom/rebel/module/R$id;->blacklistInput:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->blacklistInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 157
    sget v2, Lcom/rebel/module/R$id;->footerTextInput:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->footerTextInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 158
    sget v2, Lcom/rebel/module/R$id;->numberPrefixInput:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->numberPrefixInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 159
    sget v2, Lcom/rebel/module/R$id;->smartTokenSwitch:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->smartTokenSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 160
    sget v2, Lcom/rebel/module/R$id;->yesBankBypassSwitch:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->yesBankBypassSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 161
    sget v2, Lcom/rebel/module/R$id;->smsHooking2Switch:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->smsHooking2Switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 163
    sget v2, Lcom/rebel/module/R$id;->telegramSettings:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->telegramSettings:Landroid/widget/LinearLayout;

    .line 164
    sget v2, Lcom/rebel/module/R$id;->senderIdSettings:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->senderIdSettings:Landroid/widget/LinearLayout;

    .line 165
    sget v2, Lcom/rebel/module/R$id;->mobileSettings:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->mobileSettings:Landroid/widget/LinearLayout;

    .line 167
    sget v2, Lcom/rebel/module/R$id;->verifyTelegramButton:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->verifyTelegramButton:Lcom/google/android/material/button/MaterialButton;

    .line 168
    sget v2, Lcom/rebel/module/R$id;->requestDefaultSmsAppButton:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->requestDefaultSmsAppButton:Lcom/google/android/material/button/MaterialButton;

    .line 170
    sget v2, Lcom/rebel/module/R$id;->serviceStatusText:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->serviceStatusText:Landroid/widget/TextView;

    .line 171
    sget v2, Lcom/rebel/module/R$id;->versionText:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rebel/module/SettingsFragment;->versionText:Landroid/widget/TextView;

    .line 175
    :try_start_1
    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/rebel/module/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 177
    .local v2, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/rebel/module/SettingsFragment;->versionText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .end local v2    # "version":Ljava/lang/String;
    goto :goto_4

    .line 178
    :catch_1
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/rebel/module/SettingsFragment;->versionText:Landroid/widget/TextView;

    const-string v5, "v1.0"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->loadConfig()V

    .line 186
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->setupSwitchListeners()V

    .line 187
    invoke-direct {p0}, Lcom/rebel/module/SettingsFragment;->setupTextListeners()V

    .line 190
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->verifyTelegramButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcom/rebel/module/SettingsFragment;->requestDefaultSmsAppButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/rebel/module/SettingsFragment;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method
