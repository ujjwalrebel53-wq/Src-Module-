.class public Lcom/rebel/module/NaviPinHook;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "NaviPinHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/rebel/module/NativeBridge;->nativeOnNaviPinHook(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 17
    :goto_0
    return-void
.end method
