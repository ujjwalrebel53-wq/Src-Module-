.class Lcom/rebel/module/MagnetAppUpiButtonHook$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "MagnetAppUpiButtonHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/MagnetAppUpiButtonHook;->installApiResponsePatcher(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/rebel/module/MagnetAppUpiButtonHook$5;->val$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 21
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 266
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "data"

    :try_start_0
    invoke-virtual {v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    .line 267
    .local v4, "response":Ljava/lang/Object;
    if-nez v4, :cond_0

    return-void

    .line 269
    :cond_0
    const-string v0, "request"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v6}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    .line 270
    .local v6, "request":Ljava/lang/Object;
    const-string v0, "url"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    .line 271
    .local v7, "url":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 272
    .local v8, "urlStr":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 273
    .local v9, "urlLower":Ljava/lang/String;
    const-string v0, "code"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v10}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v0

    .line 275
    .local v10, "code":I
    const-string v0, "/v3/users/me"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v11, "string"

    const-wide/32 v12, 0x20000

    const-string v14, "peekBody"

    const/16 v15, 0xc8

    if-eqz v0, :cond_2

    if-ne v10, v15, :cond_2

    .line 277
    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v14, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    .local v0, "origBody":Ljava/lang/Object;
    move-wide/from16 v16, v12

    :try_start_2
    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v0, v11, v12}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 279
    .local v12, "bodyStr":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 280
    .local v13, "json":Lorg/json/JSONObject;
    const/16 v18, 0x0

    .line 286
    .local v18, "mod":Z
    if-eqz v18, :cond_1

    .line 287
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v15, v1, Lcom/rebel/module/MagnetAppUpiButtonHook$5;->val$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-static {v4, v5, v15}, Lcom/rebel/module/MagnetAppUpiButtonHook;->-$$Nest$smrebuildResponse(Ljava/lang/Object;Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Ljava/lang/Object;

    move-result-object v5

    .line 288
    .local v5, "nr":Ljava/lang/Object;
    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 290
    .end local v0    # "origBody":Ljava/lang/Object;
    .end local v5    # "nr":Ljava/lang/Object;
    .end local v12    # "bodyStr":Ljava/lang/String;
    .end local v13    # "json":Lorg/json/JSONObject;
    .end local v18    # "mod":Z
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v12

    :cond_1
    :goto_0
    goto :goto_1

    .line 275
    :cond_2
    move-wide/from16 v16, v12

    .line 293
    :goto_1
    :try_start_3
    const-string v0, "user_traits"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "fetch"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_8

    const/16 v5, 0xc8

    if-ne v10, v5, :cond_8

    .line 295
    :try_start_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v14, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    .restart local v0    # "origBody":Ljava/lang/Object;
    const/4 v5, 0x0

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v0, v11, v12}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 297
    .local v5, "bodyStr":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    .local v11, "json":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 300
    .local v12, "mod":Z
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 301
    .local v13, "data":Lorg/json/JSONObject;
    if-eqz v13, :cond_6

    .line 302
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 303
    .local v3, "inner":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 304
    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const-string v15, "UPI_UI_ONBOARDING"

    const/16 v19, 0x0

    aput-object v15, v14, v19

    const-string v15, "UPI_HEADLESS"

    move-object/from16 v16, v0

    .end local v0    # "origBody":Ljava/lang/Object;
    .local v16, "origBody":Ljava/lang/Object;
    const/4 v0, 0x1

    aput-object v15, v14, v0

    const-string v15, "UPI_WIDGET"

    const/16 v17, 0x2

    aput-object v15, v14, v17

    const-string v15, "UPI_UI_PROTECTION"

    const/16 v17, 0x3

    aput-object v15, v14, v17

    const-string v15, "ENABLE_CUSTOM_UPI_PAY"

    const/16 v17, 0x4

    aput-object v15, v14, v17

    const-string v15, "UPI_FAQ"

    const/16 v17, 0x5

    aput-object v15, v14, v17

    .line 306
    .local v14, "flags":[Ljava/lang/String;
    array-length v15, v14

    move/from16 v17, v12

    const/4 v12, 0x0

    .end local v12    # "mod":Z
    .local v17, "mod":Z
    :goto_2
    if-ge v12, v15, :cond_4

    aget-object v18, v14, v12

    move-object/from16 v20, v18

    .line 307
    .local v20, "f":Ljava/lang/String;
    move-object/from16 v19, v5

    move-object/from16 v0, v20

    const/4 v5, 0x0

    .end local v5    # "bodyStr":Ljava/lang/String;
    .end local v20    # "f":Ljava/lang/String;
    .local v0, "f":Ljava/lang/String;
    .local v19, "bodyStr":Ljava/lang/String;
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_3

    .line 308
    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 309
    const/16 v17, 0x1

    goto :goto_3

    .line 307
    :cond_3
    const/4 v5, 0x1

    .line 306
    .end local v0    # "f":Ljava/lang/String;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move v0, v5

    move-object/from16 v5, v19

    goto :goto_2

    .end local v19    # "bodyStr":Ljava/lang/String;
    .restart local v5    # "bodyStr":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v5

    .end local v5    # "bodyStr":Ljava/lang/String;
    .restart local v19    # "bodyStr":Ljava/lang/String;
    move/from16 v12, v17

    goto :goto_4

    .line 303
    .end local v14    # "flags":[Ljava/lang/String;
    .end local v16    # "origBody":Ljava/lang/Object;
    .end local v17    # "mod":Z
    .end local v19    # "bodyStr":Ljava/lang/String;
    .local v0, "origBody":Ljava/lang/Object;
    .restart local v5    # "bodyStr":Ljava/lang/String;
    .restart local v12    # "mod":Z
    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v19, v5

    .end local v0    # "origBody":Ljava/lang/Object;
    .end local v5    # "bodyStr":Ljava/lang/String;
    .restart local v16    # "origBody":Ljava/lang/Object;
    .restart local v19    # "bodyStr":Ljava/lang/String;
    goto :goto_4

    .line 301
    .end local v3    # "inner":Lorg/json/JSONObject;
    .end local v16    # "origBody":Ljava/lang/Object;
    .end local v19    # "bodyStr":Ljava/lang/String;
    .restart local v0    # "origBody":Ljava/lang/Object;
    .restart local v5    # "bodyStr":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v19, v5

    .line 314
    .end local v0    # "origBody":Ljava/lang/Object;
    .end local v5    # "bodyStr":Ljava/lang/String;
    .restart local v16    # "origBody":Ljava/lang/Object;
    .restart local v19    # "bodyStr":Ljava/lang/String;
    :goto_4
    if-eqz v12, :cond_7

    .line 315
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/rebel/module/MagnetAppUpiButtonHook$5;->val$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-static {v4, v0, v3}, Lcom/rebel/module/MagnetAppUpiButtonHook;->-$$Nest$smrebuildResponse(Ljava/lang/Object;Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "nr":Ljava/lang/Object;
    if-eqz v0, :cond_7

    invoke-virtual {v2, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 318
    .end local v0    # "nr":Ljava/lang/Object;
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v12    # "mod":Z
    .end local v13    # "data":Lorg/json/JSONObject;
    .end local v16    # "origBody":Ljava/lang/Object;
    .end local v19    # "bodyStr":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :cond_7
    :goto_5
    goto :goto_6

    .line 320
    .end local v4    # "response":Ljava/lang/Object;
    .end local v6    # "request":Ljava/lang/Object;
    .end local v7    # "url":Ljava/lang/Object;
    .end local v8    # "urlStr":Ljava/lang/String;
    .end local v9    # "urlLower":Ljava/lang/String;
    .end local v10    # "code":I
    :catchall_3
    move-exception v0

    :cond_8
    :goto_6
    nop

    .line 321
    return-void
.end method
