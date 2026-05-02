.class Lcom/rebel/module/XposedHook$41;
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

    .line 2181
    iput-object p1, p0, Lcom/rebel/module/XposedHook$41;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$41;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 6
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 2184
    iget-object v0, p0, Lcom/rebel/module/XposedHook$41;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v0, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2186
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook$41;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v0, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiMacAddress:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2187
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x6

    new-array v2, v1, [B

    .line 2188
    .local v2, "mac":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 2189
    aget-object v4, v0, v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 2188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2191
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v2    # "mac":[B
    goto :goto_1

    .line 2192
    :catch_0
    move-exception v0

    .line 2195
    :cond_1
    :goto_1
    return-void
.end method
