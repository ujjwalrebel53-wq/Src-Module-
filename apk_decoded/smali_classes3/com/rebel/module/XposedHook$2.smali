.class Lcom/rebel/module/XposedHook$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/XposedHook;->hookGmsSmsRetrieval(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
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

    .line 359
    iput-object p1, p0, Lcom/rebel/module/XposedHook$2;->this$0:Lcom/rebel/module/XposedHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 363
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 364
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 365
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "action":Ljava/lang/String;
    const-string v3, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    .line 367
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 369
    .local v3, "isSmsRetrieved":Z
    if-eqz v3, :cond_2

    .line 371
    const-string v4, "com.google.android.gms.auth.api.phone.EXTRA_SMS_ORIGINATING_ADDRESS"

    .line 372
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    iget-object v4, p0, Lcom/rebel/module/XposedHook$2;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v4}, Lcom/rebel/module/XposedHook;->-$$Nest$misSpoofActive(Lcom/rebel/module/XposedHook;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/rebel/module/XposedHook$2;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v4}, Lcom/rebel/module/XposedHook;->-$$Nest$mgetActiveSpoofSender(Lcom/rebel/module/XposedHook;)Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "activeSender":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 376
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsSpoof: GMS originating address -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 379
    return-void

    .line 382
    .end local v4    # "activeSender":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/rebel/module/XposedHook$2;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v4}, Lcom/rebel/module/XposedHook;->-$$Nest$mshouldSpoofGmsSender(Lcom/rebel/module/XposedHook;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    iget-object v4, p0, Lcom/rebel/module/XposedHook$2;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v4}, Lcom/rebel/module/XposedHook;->-$$Nest$fgetconfigManager(Lcom/rebel/module/XposedHook;)Lcom/rebel/module/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rebel/module/ConfigManager;->c0xa3f1d7e2()Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "senderId":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 385
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsHook: Spoofed GMS originating address -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 387
    invoke-static {v5}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 392
    .end local v4    # "senderId":Ljava/lang/String;
    :cond_1
    const-string v4, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/rebel/module/XposedHook$2;->this$0:Lcom/rebel/module/XposedHook;

    .line 393
    invoke-static {v4}, Lcom/rebel/module/XposedHook;->-$$Nest$misSpoofActive(Lcom/rebel/module/XposedHook;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 395
    .local v4, "originalResult":Ljava/lang/String;
    iget-object v5, p0, Lcom/rebel/module/XposedHook$2;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v5, v4}, Lcom/rebel/module/XposedHook;->-$$Nest$mgetActiveSpoofBody(Lcom/rebel/module/XposedHook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, "activeBody":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 399
    invoke-virtual {p1, v5}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 400
    iget-object v6, p0, Lcom/rebel/module/XposedHook$2;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v6}, Lcom/rebel/module/XposedHook;->-$$Nest$mclearSpoof(Lcom/rebel/module/XposedHook;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "isSmsRetrieved":Z
    .end local v4    # "originalResult":Ljava/lang/String;
    .end local v5    # "activeBody":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    .line 406
    :goto_0
    return-void
.end method
