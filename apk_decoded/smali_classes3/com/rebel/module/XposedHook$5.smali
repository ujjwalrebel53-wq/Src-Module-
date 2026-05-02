.class Lcom/rebel/module/XposedHook$5;
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

    .line 505
    iput-object p1, p0, Lcom/rebel/module/XposedHook$5;->this$0:Lcom/rebel/module/XposedHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook$5;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v0}, Lcom/rebel/module/XposedHook;->-$$Nest$misSpoofActive(Lcom/rebel/module/XposedHook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    return-void

    .line 511
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 512
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 513
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 516
    :cond_1
    if-eqz v0, :cond_3

    const-string v3, "sms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SMS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "message"

    .line 517
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "MESSAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "consent"

    .line 518
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CONSENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 519
    .local v1, "isSmsKey":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 520
    iget-object v3, p0, Lcom/rebel/module/XposedHook$5;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v3, v2}, Lcom/rebel/module/XposedHook;->-$$Nest$mgetActiveSpoofBody(Lcom/rebel/module/XposedHook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "activeBody":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 525
    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "isSmsKey":Z
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "activeBody":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 514
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 528
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 530
    :goto_2
    return-void
.end method
