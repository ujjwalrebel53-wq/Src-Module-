.class Lcom/rebel/module/XposedHook$10;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/XposedHook;->hookPhoneNumberMethods(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/XposedHook;


# direct methods
.method constructor <init>(Lcom/rebel/module/XposedHook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/XposedHook;

    .line 700
    iput-object p1, p0, Lcom/rebel/module/XposedHook$10;->this$0:Lcom/rebel/module/XposedHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook$10;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v0}, Lcom/rebel/module/XposedHook;->-$$Nest$fgetconfigManager(Lcom/rebel/module/XposedHook;)Lcom/rebel/module/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->isSpoofMobileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/rebel/module/XposedHook$10;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v0}, Lcom/rebel/module/XposedHook;->-$$Nest$fgetconfigManager(Lcom/rebel/module/XposedHook;)Lcom/rebel/module/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rebel/module/ConfigManager;->getMobileNo()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "mobileNo":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    .end local v0    # "mobileNo":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 714
    :catchall_0
    move-exception v0

    .line 716
    :goto_0
    return-void
.end method
