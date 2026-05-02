.class Lcom/google/android/material/appbar/debut$46;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "debut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/debut;->installGroww(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Lcom/rebel/module/ConfigManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$growwNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/google/android/material/appbar/debut$46;->val$growwNumber:Ljava/lang/String;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 1238
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$46;->val$growwNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 1239
    return-void
.end method
