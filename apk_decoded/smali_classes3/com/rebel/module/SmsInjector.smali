.class public Lcom/rebel/module/SmsInjector;
.super Ljava/lang/Object;
.source "SmsInjector.java"


# static fields
.field private static final GSM_7BIT_ALPHABET:Ljava/lang/String; = "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e \u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ \u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz \u00e4\u00f6\u00f1\u00fc\u00e0"

.field private static final TAG:Ljava/lang/String; = "SmsInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeliverPdu(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .param p0, "sender"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 44
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v0, "pdu":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 60
    invoke-static {p0}, Lcom/rebel/module/SmsInjector;->encodeAlphanumericAddress(Ljava/lang/String;)[B

    move-result-object v3

    .line 63
    .local v3, "oaData":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    div-int/2addr v4, v2

    .line 68
    .local v4, "oaLenSemiOctets":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x3

    div-int/2addr v5, v2

    .line 69
    .end local v4    # "oaLenSemiOctets":I
    .local v5, "oaLenSemiOctets":I
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 72
    const/16 v2, 0xd0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 75
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 78
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    invoke-static {p1}, Lcom/rebel/module/SmsInjector;->needsUcs2Encoding(Ljava/lang/String;)Z

    move-result v2

    .line 82
    .local v2, "needsUcs2":Z
    if-eqz v2, :cond_0

    .line 83
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    :goto_0
    invoke-static {}, Lcom/rebel/module/SmsInjector;->encodeTimestamp()[B

    move-result-object v1

    .line 90
    .local v1, "timestamp":[B
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 93
    if-eqz v2, :cond_1

    .line 94
    invoke-static {p1}, Lcom/rebel/module/SmsInjector;->encodeUcs2(Ljava/lang/String;)[B

    move-result-object v4

    .line 95
    .local v4, "ucs2Data":[B
    array-length v6, v4

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 96
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 97
    .end local v4    # "ucs2Data":[B
    goto :goto_1

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/rebel/module/SmsInjector;->encodeGsm7bit(Ljava/lang/String;)[B

    move-result-object v4

    .line 99
    .local v4, "gsm7Data":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 100
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 103
    .end local v4    # "gsm7Data":[B
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 104
    .end local v0    # "pdu":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "timestamp":[B
    .end local v2    # "needsUcs2":Z
    .end local v3    # "oaData":[B
    .end local v5    # "oaLenSemiOctets":I
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 364
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static encodeAlphanumericAddress(Ljava/lang/String;)[B
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 198
    .local v0, "septets":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 200
    .local v2, "c":C
    invoke-static {v2}, Lcom/rebel/module/SmsInjector;->gsm7bitIndex(C)I

    move-result v3

    .line 201
    .local v3, "idx":I
    if-ltz v3, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x20

    :goto_1
    aput v4, v0, v1

    .line 198
    .end local v2    # "c":C
    .end local v3    # "idx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lcom/rebel/module/SmsInjector;->packSeptets([I)[B

    move-result-object v1

    return-object v1
.end method

.method private static encodeGsm7bit(Ljava/lang/String;)[B
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 300
    .local v0, "septets":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/rebel/module/SmsInjector;->gsm7bitIndex(C)I

    move-result v2

    .line 302
    .local v2, "idx":I
    if-ltz v2, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    const/16 v3, 0x20

    :goto_1
    aput v3, v0, v1

    .line 300
    .end local v2    # "idx":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lcom/rebel/module/SmsInjector;->packSeptets([I)[B

    move-result-object v1

    return-object v1
.end method

.method private static encodeTimestamp()[B
    .locals 6

    .line 325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 326
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x7

    new-array v1, v1, [B

    .line 328
    .local v1, "ts":[B
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Lcom/rebel/module/SmsInjector;->reverseBcd(I)B

    move-result v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 329
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Lcom/rebel/module/SmsInjector;->reverseBcd(I)B

    move-result v4

    aput-byte v4, v1, v2

    .line 330
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/rebel/module/SmsInjector;->reverseBcd(I)B

    move-result v4

    aput-byte v4, v1, v3

    .line 331
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lcom/rebel/module/SmsInjector;->reverseBcd(I)B

    move-result v3

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    .line 332
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lcom/rebel/module/SmsInjector;->reverseBcd(I)B

    move-result v3

    const/4 v4, 0x4

    aput-byte v3, v1, v4

    .line 333
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lcom/rebel/module/SmsInjector;->reverseBcd(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 336
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0xea60

    div-int/2addr v2, v3

    .line 337
    .local v2, "tzOffsetMinutes":I
    div-int/lit8 v3, v2, 0xf

    .line 338
    .local v3, "tzQuarterHours":I
    const/4 v4, 0x6

    if-ltz v3, :cond_0

    .line 339
    invoke-static {v3}, Lcom/rebel/module/SmsInjector;->reverseBcd(I)B

    move-result v5

    aput-byte v5, v1, v4

    goto :goto_0

    .line 342
    :cond_0
    neg-int v5, v3

    invoke-static {v5}, Lcom/rebel/module/SmsInjector;->reverseBcd(I)B

    move-result v5

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 345
    :goto_0
    return-object v1
.end method

.method private static encodeUcs2(Ljava/lang/String;)[B
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 312
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 313
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 314
    .local v2, "c":C
    mul-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 315
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 312
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static gsm7bitIndex(C)I
    .locals 3
    .param p0, "c"    # C

    .line 241
    const/16 v0, 0x20

    sparse-switch p0, :sswitch_data_0

    .line 271
    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v2, 0x39

    if-gt p0, v2, :cond_0

    add-int/lit8 v0, p0, -0x30

    add-int/2addr v0, v1

    return v0

    .line 267
    :sswitch_0
    const/16 v0, 0x11

    return v0

    .line 242
    :sswitch_1
    const/4 v0, 0x0

    return v0

    .line 266
    :sswitch_2
    const/16 v0, 0x3f

    return v0

    .line 265
    :sswitch_3
    const/16 v0, 0x3e

    return v0

    .line 264
    :sswitch_4
    const/16 v0, 0x3d

    return v0

    .line 263
    :sswitch_5
    const/16 v0, 0x3c

    return v0

    .line 262
    :sswitch_6
    const/16 v0, 0x3b

    return v0

    .line 261
    :sswitch_7
    const/16 v0, 0x3a

    return v0

    .line 260
    :sswitch_8
    const/16 v0, 0x2f

    return v0

    .line 259
    :sswitch_9
    const/16 v0, 0x2e

    return v0

    .line 258
    :sswitch_a
    const/16 v0, 0x2d

    return v0

    .line 257
    :sswitch_b
    const/16 v0, 0x2c

    return v0

    .line 256
    :sswitch_c
    const/16 v0, 0x2b

    return v0

    .line 255
    :sswitch_d
    const/16 v0, 0x2a

    return v0

    .line 254
    :sswitch_e
    const/16 v0, 0x29

    return v0

    .line 253
    :sswitch_f
    const/16 v0, 0x28

    return v0

    .line 252
    :sswitch_10
    const/16 v0, 0x27

    return v0

    .line 251
    :sswitch_11
    const/16 v0, 0x26

    return v0

    .line 250
    :sswitch_12
    const/16 v0, 0x25

    return v0

    .line 243
    :sswitch_13
    const/4 v0, 0x2

    return v0

    .line 249
    :sswitch_14
    const/16 v0, 0x23

    return v0

    .line 248
    :sswitch_15
    const/16 v0, 0x22

    return v0

    .line 247
    :sswitch_16
    const/16 v0, 0x21

    return v0

    .line 246
    :sswitch_17
    return v0

    .line 245
    :sswitch_18
    const/16 v0, 0xd

    return v0

    .line 244
    :sswitch_19
    const/16 v0, 0xa

    return v0

    .line 273
    :cond_0
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/2addr v0, v1

    return v0

    .line 275
    :cond_1
    const/16 v1, 0x61

    if-lt p0, v1, :cond_2

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/2addr v0, v1

    return v0

    .line 277
    :cond_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_19
        0xd -> :sswitch_18
        0x20 -> :sswitch_17
        0x21 -> :sswitch_16
        0x22 -> :sswitch_15
        0x23 -> :sswitch_14
        0x24 -> :sswitch_13
        0x25 -> :sswitch_12
        0x26 -> :sswitch_11
        0x27 -> :sswitch_10
        0x28 -> :sswitch_f
        0x29 -> :sswitch_e
        0x2a -> :sswitch_d
        0x2b -> :sswitch_c
        0x2c -> :sswitch_b
        0x2d -> :sswitch_a
        0x2e -> :sswitch_9
        0x2f -> :sswitch_8
        0x3a -> :sswitch_7
        0x3b -> :sswitch_6
        0x3c -> :sswitch_5
        0x3d -> :sswitch_4
        0x3e -> :sswitch_3
        0x3f -> :sswitch_2
        0x40 -> :sswitch_1
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method public static injectSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 121
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/rebel/module/SmsInjector;->buildDeliverPdu(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 122
    .local v0, "pdu":[B
    if-nez v0, :cond_0

    .line 124
    return v1

    .line 132
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    .line 135
    .local v5, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "pdus"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 137
    const-string v3, "format"

    const-string v4, "3gpp"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    const-string v6, "android.permission.RECEIVE_SMS"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v4, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    :try_start_1
    invoke-virtual/range {v4 .. v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    const/4 p0, 0x1

    return p0

    .line 154
    .end local v0    # "pdu":[B
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .end local v4    # "context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_1
    move-exception v0

    move-object v4, p0

    move-object p0, v0

    .line 157
    .restart local v4    # "context":Landroid/content/Context;
    .local p0, "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public static injectToInbox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "body"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v2, "date_sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v2, "read"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v2, "seen"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v2, "status"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "content://sms/inbox"

    .line 178
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 177
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    move v0, v3

    .line 183
    .local v0, "success":Z
    :cond_0
    return v0

    .line 184
    .end local v0    # "success":Z
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static needsUcs2Encoding(Ljava/lang/String;)Z
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 286
    .local v1, "c":C
    invoke-static {v1}, Lcom/rebel/module/SmsInjector;->gsm7bitIndex(C)I

    move-result v2

    if-gez v2, :cond_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 289
    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 284
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static packSeptets([I)[B
    .locals 12
    .param p0, "septets"    # [I

    .line 213
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 214
    .local v0, "numBytes":I
    new-array v1, v0, [B

    .line 216
    .local v1, "packed":[B
    const/4 v2, 0x0

    .line 217
    .local v2, "bitOffset":I
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, p0, v4

    .line 218
    .local v5, "septet":I
    div-int/lit8 v6, v2, 0x8

    .line 219
    .local v6, "byteIdx":I
    rem-int/lit8 v7, v2, 0x8

    .line 221
    .local v7, "bitIdx":I
    aget-byte v8, v1, v6

    and-int/lit8 v9, v5, 0x7f

    shl-int/2addr v9, v7

    int-to-byte v9, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    .line 223
    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 225
    add-int/lit8 v8, v6, 0x1

    array-length v9, v1

    if-ge v8, v9, :cond_0

    .line 226
    add-int/lit8 v8, v6, 0x1

    aget-byte v9, v1, v8

    and-int/lit8 v10, v5, 0x7f

    rsub-int/lit8 v11, v7, 0x8

    shr-int/2addr v10, v11

    int-to-byte v10, v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 230
    :cond_0
    nop

    .end local v5    # "septet":I
    .end local v6    # "byteIdx":I
    .end local v7    # "bitIdx":I
    add-int/lit8 v2, v2, 0x7

    .line 217
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_1
    return-object v1
.end method

.method private static reverseBcd(I)B
    .locals 3
    .param p0, "value"    # I

    .line 353
    div-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0xf

    .line 354
    .local v0, "tens":I
    rem-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0xf

    .line 355
    .local v1, "ones":I
    shl-int/lit8 v2, v1, 0x4

    or-int/2addr v2, v0

    int-to-byte v2, v2

    return v2
.end method
