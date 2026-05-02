.class Lcom/rebel/module/XposedHook$7;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/XposedHook;->hookCursorSmsReads(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
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

    .line 578
    iput-object p1, p0, Lcom/rebel/module/XposedHook$7;->this$0:Lcom/rebel/module/XposedHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/XposedHook$7;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v0}, Lcom/rebel/module/XposedHook;->-$$Nest$misSpoofActive(Lcom/rebel/module/XposedHook;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    return-void

    .line 584
    :cond_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 588
    :cond_1
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 589
    .local v1, "colIndex":I
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v2, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 592
    .local v3, "colName":Ljava/lang/String;
    :try_start_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    .line 594
    goto :goto_0

    .line 593
    :catch_0
    move-exception v4

    .line 597
    :goto_0
    :try_start_2
    const-string v4, "body"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 598
    iget-object v4, p0, Lcom/rebel/module/XposedHook$7;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v4, v0}, Lcom/rebel/module/XposedHook;->-$$Nest$mgetActiveSpoofBody(Lcom/rebel/module/XposedHook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, "activeBody":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 604
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 608
    .end local v4    # "activeBody":Ljava/lang/String;
    :cond_2
    const-string v4, "address"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 609
    iget-object v4, p0, Lcom/rebel/module/XposedHook$7;->this$0:Lcom/rebel/module/XposedHook;

    invoke-static {v4}, Lcom/rebel/module/XposedHook;->-$$Nest$mgetActiveSpoofSender(Lcom/rebel/module/XposedHook;)Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, "activeSender":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 615
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 619
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "colIndex":I
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "colName":Ljava/lang/String;
    .end local v4    # "activeSender":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 586
    .restart local v0    # "result":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 618
    .end local v0    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 620
    :goto_2
    return-void
.end method
