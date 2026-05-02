.class Lcom/rebel/module/XposedHook$40;
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

    .line 2130
    iput-object p1, p0, Lcom/rebel/module/XposedHook$40;->this$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 2133
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2134
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2135
    return-void

    .line 2140
    :cond_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 2141
    .local v1, "currentResult":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2142
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 2143
    .local v2, "val":Ljava/lang/String;
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2144
    :cond_1
    return-void

    .line 2148
    .end local v2    # "val":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2150
    .local v2, "kl":Ljava/lang/String;
    const-string v3, "android_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "androidid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2151
    const-string v3, "android_device_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 2154
    :cond_3
    const-string v3, "advertising_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "advertisingid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2155
    const-string v3, "ad_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "gaid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 2158
    :cond_4
    const-string v3, "imei"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2159
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->imei:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 2160
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->imei:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 2161
    :cond_5
    const-string v3, "gsf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "google_services_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 2164
    :cond_6
    const-string v3, "mac_address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "macaddress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2165
    const-string v3, "mac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2166
    :cond_7
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiMacAddress:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 2167
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 2162
    :cond_8
    :goto_0
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->gsfId:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 2163
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->gsfId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 2156
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->advertisingId:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 2157
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->advertisingId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 2152
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 2153
    iget-object v3, p0, Lcom/rebel/module/XposedHook$40;->val$profile:Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    iget-object v3, v3, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2169
    :cond_b
    :goto_3
    return-void
.end method
