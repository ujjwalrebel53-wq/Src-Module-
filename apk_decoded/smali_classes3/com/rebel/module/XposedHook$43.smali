.class Lcom/rebel/module/XposedHook$43;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/XposedHook;->hookDeviceFaker(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/XposedHook;

.field final synthetic val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;


# direct methods
.method constructor <init>(Lcom/rebel/module/XposedHook;Lcom/rebel/module/DeviceFakerManager$DeviceProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/XposedHook;

    .line 2225
    iput-object p1, p0, Lcom/rebel/module/XposedHook$43;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$43;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 2228
    iget-object v0, p0, Lcom/rebel/module/XposedHook$43;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v0, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rebel/module/XposedHook$43;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    iget-object v2, p0, Lcom/rebel/module/XposedHook$43;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v2, v2, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    .line 2230
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2229
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2232
    :cond_0
    return-void
.end method
