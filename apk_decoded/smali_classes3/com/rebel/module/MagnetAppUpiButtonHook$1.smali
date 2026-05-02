.class Lcom/rebel/module/MagnetAppUpiButtonHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "MagnetAppUpiButtonHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/MagnetAppUpiButtonHook;->installFloatingButton(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

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

    .line 71
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 72
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/rebel/module/MagnetAppUpiButtonHook;->-$$Nest$sfputmainActivityRef(Landroid/app/Activity;)V

    .line 73
    const-string v1, "MagnetUPI: \u2605 MainActivity.onCreate"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 75
    new-instance v1, Lcom/rebel/module/MagnetAppUpiButtonHook$1$1;

    invoke-direct {v1, p0, v0}, Lcom/rebel/module/MagnetAppUpiButtonHook$1$1;-><init>(Lcom/rebel/module/MagnetAppUpiButtonHook$1;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method
