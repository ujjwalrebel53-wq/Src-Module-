.class Lcom/google/android/material/appbar/debut$26;
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

    .line 607
    iput-object p1, p0, Lcom/google/android/material/appbar/debut$26;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 14
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 611
    const-string v0, "request"

    :try_start_0
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 612
    .local v1, "request":Ljava/lang/Object;
    const-string v3, "url"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "urlStr":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x89

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_0

    .line 615
    :try_start_1
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/google/android/material/appbar/debut$26;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 616
    .local v4, "protocolClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8d

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 617
    .local v5, "http11":Ljava/lang/Object;
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/google/android/material/appbar/debut$26;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v6, v7}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 618
    .local v6, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 619
    .local v7, "builder":Ljava/lang/Object;
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v0, "protocol"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v0, "code"

    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v0, "message"

    const-string v8, "OK"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x2d

    aget-object v0, v0, v8

    iget-object v8, p0, Lcom/google/android/material/appbar/debut$26;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v8}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 624
    .local v0, "rbClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2e

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/google/android/material/appbar/debut$26;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v8, v9}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 625
    .local v8, "mtClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "get"

    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x88

    aget-object v10, v10, v11

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 626
    .local v9, "mt":Ljava/lang/Object;
    const-string v10, "create"

    const-string v11, "{}"

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v0, v10, v11}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 627
    .local v10, "eb":Ljava/lang/Object;
    const-string v11, "body"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v11, "build"

    new-array v12, v2, [Ljava/lang/Object;

    invoke-static {v7, v11, v12}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 629
    .local v11, "fakeResp":Ljava/lang/Object;
    iget-object v12, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v12, v2

    const-string v12, "onResponse"

    iget-object v13, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    filled-new-array {v13, v11}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v2, v12, v13}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    .end local v0    # "rbClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "protocolClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "http11":Ljava/lang/Object;
    .end local v6    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "builder":Ljava/lang/Object;
    .end local v8    # "mtClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "mt":Ljava/lang/Object;
    .end local v10    # "eb":Ljava/lang/Object;
    .end local v11    # "fakeResp":Ljava/lang/Object;
    goto :goto_0

    .line 631
    :catchall_0
    move-exception v0

    .line 633
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 636
    .end local v1    # "request":Ljava/lang/Object;
    .end local v3    # "urlStr":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 635
    :catchall_1
    move-exception v0

    .line 637
    :goto_1
    return-void
.end method
