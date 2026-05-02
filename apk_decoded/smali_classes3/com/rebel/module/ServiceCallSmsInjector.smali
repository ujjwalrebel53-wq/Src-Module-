.class public Lcom/rebel/module/ServiceCallSmsInjector;
.super Ljava/lang/Object;
.source "ServiceCallSmsInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceCallInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildSmsPdu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "sender"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 96
    const-string v0, "00"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "pdu":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "04"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {p0}, Lcom/rebel/module/ServiceCallSmsInjector;->encodeSenderAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "senderEncoded":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {p1}, Lcom/rebel/module/ServiceCallSmsInjector;->isAscii(Ljava/lang/String;)Z

    move-result v3

    .line 113
    .local v3, "isAscii":Z
    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :cond_0
    const-string v0, "08"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_0
    invoke-static {}, Lcom/rebel/module/ServiceCallSmsInjector;->encodeTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {p1, v3}, Lcom/rebel/module/ServiceCallSmsInjector;->encodeUserData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "userData":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 127
    .end local v0    # "userData":Ljava/lang/String;
    .end local v1    # "pdu":Ljava/lang/StringBuilder;
    .end local v2    # "senderEncoded":Ljava/lang/String;
    .end local v3    # "isAscii":Z
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method private static encode7Bit(Ljava/lang/String;)[B
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 227
    .local v0, "len":I
    mul-int/lit8 v1, v0, 0x7

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 228
    .local v1, "bytes":I
    new-array v2, v1, [B

    .line 230
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 231
    .local v3, "bitIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 232
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    .line 233
    .local v5, "value":I
    div-int/lit8 v6, v3, 0x8

    .line 234
    .local v6, "byteIndex":I
    rem-int/lit8 v7, v3, 0x8

    .line 236
    .local v7, "bitOffset":I
    aget-byte v8, v2, v6

    shl-int v9, v5, v7

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 237
    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    add-int/lit8 v8, v6, 0x1

    if-ge v8, v1, :cond_0

    .line 238
    add-int/lit8 v8, v6, 0x1

    rsub-int/lit8 v9, v7, 0x8

    shr-int v9, v5, v9

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 241
    :cond_0
    nop

    .end local v5    # "value":I
    .end local v6    # "byteIndex":I
    .end local v7    # "bitOffset":I
    add-int/lit8 v3, v3, 0x7

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    .end local v4    # "i":I
    :cond_1
    return-object v2
.end method

.method private static encodeSenderAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sender"    # Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "encoded":Ljava/lang/StringBuilder;
    const-string v1, "^[0-9+]+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "%02X"

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "+"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "digits":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 144
    .local v3, "len":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v2, "91"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 149
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 150
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    :cond_0
    const-string v4, "F"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 157
    .end local v1    # "digits":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    goto :goto_3

    .line 159
    :cond_2
    invoke-static {p0}, Lcom/rebel/module/ServiceCallSmsInjector;->encode7Bit(Ljava/lang/String;)[B

    move-result-object v1

    .line 160
    .local v1, "bytes":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 162
    .restart local v3    # "len":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v4, "D0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    array-length v4, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    aget-byte v6, v1, v5

    .line 166
    .local v6, "b":B
    and-int/lit16 v7, v6, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 170
    .end local v1    # "bytes":[B
    .end local v3    # "len":I
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static encodeTimestamp()Ljava/lang/String;
    .locals 10

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    .line 180
    .local v2, "year":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 181
    .local v3, "month":I
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 182
    .local v1, "day":I
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 183
    .local v4, "hour":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 184
    .local v5, "minute":I
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 185
    .local v6, "second":I
    const/16 v7, 0xf

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const v8, 0xdbba0

    div-int/2addr v7, v8

    .line 187
    .local v7, "timezone":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/rebel/module/ServiceCallSmsInjector;->swapDigits(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/rebel/module/ServiceCallSmsInjector;->swapDigits(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lcom/rebel/module/ServiceCallSmsInjector;->swapDigits(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 188
    invoke-static {v4}, Lcom/rebel/module/ServiceCallSmsInjector;->swapDigits(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/rebel/module/ServiceCallSmsInjector;->swapDigits(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/rebel/module/ServiceCallSmsInjector;->swapDigits(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 189
    invoke-static {v7}, Lcom/rebel/module/ServiceCallSmsInjector;->swapDigits(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 187
    return-object v8
.end method

.method private static encodeUserData(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "isAscii"    # Z

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v0, "encoded":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const-string v2, "%02X"

    if-eqz p1, :cond_1

    .line 205
    invoke-static {p0}, Lcom/rebel/module/ServiceCallSmsInjector;->encode7Bit(Ljava/lang/String;)[B

    move-result-object v3

    .line 206
    .local v3, "bytes":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v5, v3, v1

    .line 208
    .local v5, "b":B
    and-int/lit16 v6, v5, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .end local v5    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v3    # "bytes":[B
    :cond_0
    goto :goto_2

    .line 212
    :cond_1
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 213
    .restart local v3    # "bytes":[B
    array-length v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_2

    aget-byte v5, v3, v1

    .line 215
    .restart local v5    # "b":B
    and-int/lit16 v6, v5, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .end local v5    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    .end local v3    # "bytes":[B
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static injectSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/rebel/module/ServiceCallSmsInjector;->buildSmsPdu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "pdu":Ljava/lang/String;
    invoke-static {v1}, Lcom/rebel/module/ServiceCallSmsInjector;->injectViaServiceCall(Ljava/lang/String;)Z

    move-result v2

    .line 39
    .local v2, "method1":Z
    invoke-static {p0, p1, p2}, Lcom/rebel/module/RootSmsInjector;->injectSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 43
    .local v3, "method2":Z
    invoke-static {p0, p1, p2}, Lcom/rebel/module/ServiceCallSmsInjector;->triggerSmsNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 50
    .local v0, "success":Z
    :cond_1
    return v0

    .line 51
    .end local v0    # "success":Z
    .end local v1    # "pdu":Ljava/lang/String;
    .end local v2    # "method1":Z
    .end local v3    # "method2":Z
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static injectViaServiceCall(Ljava/lang/String;)Z
    .locals 10
    .param p0, "pdu"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service call isms 3 s16 \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "su"

    aput-object v4, v3, v0

    const-string v4, "-c"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 70
    .local v2, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v4, "output":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 75
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v6

    .line 79
    .local v6, "exitCode":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "result":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v9, "Result: Parcel"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_2

    :cond_1
    move v0, v5

    :cond_2
    return v0

    .line 85
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "output":Ljava/lang/StringBuilder;
    .end local v6    # "exitCode":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static isAscii(Ljava/lang/String;)Z
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    .line 249
    .local v4, "c":C
    const/16 v5, 0x7f

    if-le v4, v5, :cond_0

    return v2

    .line 248
    .end local v4    # "c":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static swapDigits(I)Ljava/lang/String;
    .locals 3
    .param p0, "num"    # I

    .line 193
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static triggerSmsNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 260
    :try_start_0
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 261
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "address"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v2, "body"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 274
    :goto_0
    return-void
.end method
