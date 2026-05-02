.class Lcom/rebel/module/XposedHook$36;
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

    .line 2031
    iput-object p1, p0, Lcom/rebel/module/XposedHook$36;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$36;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 6
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 2034
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2035
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "deviceUniqueId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rebel/module/XposedHook$36;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2036
    iget-object v1, p0, Lcom/rebel/module/XposedHook$36;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v1, v1, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 2037
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2038
    iget-object v3, p0, Lcom/rebel/module/XposedHook$36;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    .line 2039
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2038
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2037
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2041
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2043
    .end local v1    # "bytes":[B
    :cond_1
    return-void
.end method
