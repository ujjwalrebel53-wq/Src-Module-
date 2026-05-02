.class public Lcom/rebel/module/AirtelMethodHook;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "AirtelMethodHook.java"


# instance fields
.field private final hookId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "hookId"    # I

    .line 13
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    .line 14
    iput p1, p0, Lcom/rebel/module/AirtelMethodHook;->hookId:I

    .line 15
    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    iget v0, p0, Lcom/rebel/module/AirtelMethodHook;->hookId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rebel/module/AirtelMethodHook;->hookId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 26
    :cond_0
    iget v0, p0, Lcom/rebel/module/AirtelMethodHook;->hookId:I

    invoke-static {v0, p1}, Lcom/rebel/module/NativeBridge;->nativeOnAirtelHook(ILjava/lang/Object;)V

    .line 28
    :cond_1
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    iget v0, p0, Lcom/rebel/module/AirtelMethodHook;->hookId:I

    invoke-static {v0, p1}, Lcom/rebel/module/NativeBridge;->nativeOnAirtelHook(ILjava/lang/Object;)V

    .line 20
    return-void
.end method
