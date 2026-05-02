.class Lcom/rebel/module/EsafHook$7;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "EsafHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/EsafHook;->hookSecurityModule(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 148
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 149
    .local v1, "promise":Ljava/lang/Object;
    const-string v2, "resolve"

    const-string v3, "102"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 151
    const-string v2, "EsafHook: \ud83d\udee1\ufe0f storeKey() \u2192 102 (valid signature)"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v1    # "promise":Ljava/lang/Object;
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    .line 153
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 155
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
