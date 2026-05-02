.class Lcom/google/android/material/appbar/debut$32;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 732
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 735
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 736
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 738
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d

    aget-object v2, v2, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    goto :goto_0

    .line 739
    :catchall_0
    move-exception v2

    .line 742
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7e

    aget-object v2, v2, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 744
    goto :goto_1

    .line 743
    :catchall_1
    move-exception v1

    .line 746
    :cond_0
    :goto_1
    return-void
.end method
