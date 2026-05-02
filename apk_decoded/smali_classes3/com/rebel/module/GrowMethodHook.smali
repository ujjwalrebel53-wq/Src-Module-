.class public Lcom/rebel/module/GrowMethodHook;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "GrowMethodHook.java"


# instance fields
.field private final hookId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "hookId"    # I

    .line 14
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    .line 15
    iput p1, p0, Lcom/rebel/module/GrowMethodHook;->hookId:I

    .line 16
    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 21
    :try_start_0
    iget v0, p0, Lcom/rebel/module/GrowMethodHook;->hookId:I

    invoke-static {v0, p1}, Lcom/rebel/module/NativeBridge;->nativeOnGrowHook(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 24
    :goto_0
    return-void
.end method
