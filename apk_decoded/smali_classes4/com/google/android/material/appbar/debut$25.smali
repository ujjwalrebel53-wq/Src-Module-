.class Lcom/google/android/material/appbar/debut$25;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "debut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/debut;->hookNaviDetection(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$classLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/google/android/material/appbar/debut$25;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 9
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 580
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 581
    .local v0, "response":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 582
    return-void

    .line 583
    :cond_0
    const-string v1, "request"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 584
    .local v1, "request":Ljava/lang/Object;
    const-string v3, "url"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 585
    .local v3, "url":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "urlStr":Ljava/lang/String;
    const-string v5, "setResetPin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "changePin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "pin/reset"

    .line 587
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "pin/change"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "navipay/npci"

    .line 588
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 589
    :cond_1
    const-string v5, "code"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 590
    .local v5, "code":I
    const-string v6, "message"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v6, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    .local v2, "msg":Ljava/lang/String;
    :try_start_1
    const-string v6, "peekBody"

    const-wide/16 v7, 0x2800

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    goto :goto_0

    .line 593
    :catchall_0
    move-exception v6

    .line 597
    .end local v0    # "response":Ljava/lang/Object;
    .end local v1    # "request":Ljava/lang/Object;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/Object;
    .end local v4    # "urlStr":Ljava/lang/String;
    .end local v5    # "code":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 596
    :catchall_1
    move-exception v0

    .line 598
    :goto_1
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 14
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 553
    const-string v0, "request"

    :try_start_0
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 554
    .local v1, "request":Ljava/lang/Object;
    const-string v3, "url"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 555
    .local v3, "url":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "urlStr":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x89

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 557
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2b

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/google/android/material/appbar/debut$25;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 558
    .local v5, "protocolClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8d

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 559
    .local v6, "http11":Ljava/lang/Object;
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2c

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/google/android/material/appbar/debut$25;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v8}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 560
    .local v7, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 561
    .local v8, "builder":Ljava/lang/Object;
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v0, "protocol"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v0, "code"

    const/16 v9, 0xc8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v0, "message"

    const-string v9, "OK"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x2d

    aget-object v0, v0, v9

    iget-object v9, p0, Lcom/google/android/material/appbar/debut$25;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v9}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 566
    .local v0, "responseBodyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/google/android/material/appbar/debut$25;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v9, v10}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 567
    .local v9, "mediaTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "get"

    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x88

    aget-object v11, v11, v12

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 568
    .local v10, "mediaType":Ljava/lang/Object;
    const-string v11, "create"

    const-string v12, "{}"

    filled-new-array {v10, v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v11, v12}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 570
    .local v11, "emptyBody":Ljava/lang/Object;
    const-string v12, "body"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v8, v12, v13}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v12, "build"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v12, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    .end local v0    # "responseBodyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "request":Ljava/lang/Object;
    .end local v3    # "url":Ljava/lang/Object;
    .end local v4    # "urlStr":Ljava/lang/String;
    .end local v5    # "protocolClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "http11":Ljava/lang/Object;
    .end local v7    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "builder":Ljava/lang/Object;
    .end local v9    # "mediaTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "mediaType":Ljava/lang/Object;
    .end local v11    # "emptyBody":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    .line 575
    :goto_0
    return-void
.end method
