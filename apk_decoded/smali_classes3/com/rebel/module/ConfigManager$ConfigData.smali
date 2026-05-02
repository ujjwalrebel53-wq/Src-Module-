.class public Lcom/rebel/module/ConfigManager$ConfigData;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rebel/module/ConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigData"
.end annotation


# instance fields
.field public blacklist:Ljava/lang/String;

.field public bot_token:Ljava/lang/String;

.field public chat_id:Ljava/lang/String;

.field public exp_date:Ljava/lang/String;

.field public fix_airtel:Z

.field public fix_esaf:Z

.field public fix_esaf_native:Z

.field public fix_groww:Z

.field public fix_kreditbee:Z

.field public fix_navi:Z

.field public fix_phonepe:Z

.field public fix_zagg:Z

.field public fix_zet:Z

.field public footer_text:Ljava/lang/String;

.field public gms_sender:Z

.field public groww_mobile_no:Ljava/lang/String;

.field public hook_sms:Z

.field public isRoot:Ljava/lang/String;

.field public mobile_no:Ljava/lang/String;

.field public number_prefix:Ljava/lang/String;

.field public registred_id:Ljava/lang/String;

.field public sender_id:Ljava/lang/String;

.field public smart_token:Z

.field public sms_hooking_2:Z

.field public sms_sender:Z

.field public spoof_body:Ljava/lang/String;

.field public spoof_direction:Z

.field public spoof_mobile:Z

.field public spoof_preset:Ljava/lang/String;

.field public spoof_sender:Z

.field public supermoney_bypass:Z

.field public timer_multiplier:I

.field public verification_delay:I

.field public whitelist:Ljava/lang/String;

.field public whitelist_mode:Z

.field public yesbank_bypass:Z

.field public zet_security_bypass:Z

.field public zet_src_prefix:Z

.field public zet_upi:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    .line 64
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    .line 65
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    .line 66
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    .line 67
    const-string v1, ""

    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    .line 71
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    .line 72
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->registred_id:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->exp_date:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    .line 78
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist_mode:Z

    .line 79
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    .line 80
    const-string v2, "custom"

    iput-object v2, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    .line 81
    const-string v2, "Module by @ParentGuard_Owner | DM to Buy"

    iput-object v2, p0, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    .line 82
    const/16 v2, 0xf

    iput v2, p0, Lcom/rebel/module/ConfigManager$ConfigData;->verification_delay:I

    .line 83
    const/4 v2, 0x3

    iput v2, p0, Lcom/rebel/module/ConfigManager$ConfigData;->timer_multiplier:I

    .line 84
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_navi:Z

    .line 85
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_phonepe:Z

    .line 86
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_kreditbee:Z

    .line 87
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->number_prefix:Ljava/lang/String;

    .line 88
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->smart_token:Z

    .line 89
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->yesbank_bypass:Z

    .line 90
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_hooking_2:Z

    .line 91
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zet:Z

    .line 92
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_upi:Z

    .line 93
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_src_prefix:Z

    .line 94
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_security_bypass:Z

    .line 95
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->supermoney_bypass:Z

    .line 96
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    .line 97
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    .line 98
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf:Z

    .line 99
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf_native:Z

    .line 100
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zagg:Z

    .line 101
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_airtel:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/rebel/module/ConfigManager$ConfigData;)V
    .locals 2
    .param p1, "configData"    # Lcom/rebel/module/ConfigManager$ConfigData;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    .line 106
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    .line 107
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    .line 108
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    .line 109
    const-string v1, ""

    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    .line 112
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    .line 113
    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    .line 114
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->registred_id:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->exp_date:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->hook_sms:Z

    .line 120
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_sender:Z

    .line 121
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_direction:Z

    .line 122
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_mobile:Z

    .line 123
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->bot_token:Ljava/lang/String;

    .line 124
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->chat_id:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->sender_id:Ljava/lang/String;

    .line 126
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->gms_sender:Z

    .line 127
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_sender:Z

    .line 128
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->mobile_no:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->registred_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->registred_id:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->exp_date:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->exp_date:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->isRoot:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->blacklist:Ljava/lang/String;

    .line 134
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist_mode:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->whitelist_mode:Z

    .line 135
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_body:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->spoof_preset:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->footer_text:Ljava/lang/String;

    .line 138
    iget v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->verification_delay:I

    iput v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->verification_delay:I

    .line 139
    iget v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->timer_multiplier:I

    iput v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->timer_multiplier:I

    .line 140
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_navi:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_navi:Z

    .line 141
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_phonepe:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_phonepe:Z

    .line 142
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_kreditbee:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_kreditbee:Z

    .line 143
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->number_prefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->number_prefix:Ljava/lang/String;

    .line 144
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->smart_token:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->smart_token:Z

    .line 145
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->yesbank_bypass:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->yesbank_bypass:Z

    .line 146
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->sms_hooking_2:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->sms_hooking_2:Z

    .line 147
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zet:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zet:Z

    .line 148
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->zet_upi:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_upi:Z

    .line 149
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->zet_src_prefix:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_src_prefix:Z

    .line 150
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->zet_security_bypass:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->zet_security_bypass:Z

    .line 151
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->supermoney_bypass:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->supermoney_bypass:Z

    .line 152
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_groww:Z

    .line 153
    iget-object v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    iput-object v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->groww_mobile_no:Ljava/lang/String;

    .line 154
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf:Z

    .line 155
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf_native:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_esaf_native:Z

    .line 156
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zagg:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_zagg:Z

    .line 157
    iget-boolean v0, p1, Lcom/rebel/module/ConfigManager$ConfigData;->fix_airtel:Z

    iput-boolean v0, p0, Lcom/rebel/module/ConfigManager$ConfigData;->fix_airtel:Z

    .line 159
    :cond_0
    return-void
.end method
