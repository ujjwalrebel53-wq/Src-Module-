.class Lcom/rebel/module/XposedHook$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/XposedHook;->hookSmsUserConsentApi(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
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

    .line 433
    iput-object p1, p0, Lcom/rebel/module/XposedHook$3;->this$0:Lcom/rebel/module/XposedHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 437
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 438
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 439
    .local v2, "result":Ljava/lang/Object;
    if-eqz v0, :cond_4

    if-nez v2, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    const-string v3, "sms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SMS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "consent"

    .line 444
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CONSENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "message"

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "MESSAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    .line 446
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "google.android.gms.sms.user_consent.extra.SMS_MESSAGE"

    .line 447
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 449
    .local v1, "isSmsKey":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 456
    iget-object v3, p0, Lcom/rebel/module/XposedHook$3;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v3}, Lcom/rebel/module/XposedHook;->-$$Nest$misSpoofActive(Lcom/rebel/module/XposedHook;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "isSmsKey":Z
    .end local v2    # "result":Ljava/lang/Object;
    :cond_3
    goto :goto_1

    .line 440
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/Object;
    :cond_4
    :goto_0
    return-void

    .line 462
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 464
    :goto_1
    return-void
.end method
