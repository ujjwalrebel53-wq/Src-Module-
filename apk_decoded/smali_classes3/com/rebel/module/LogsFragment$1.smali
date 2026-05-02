.class Lcom/rebel/module/LogsFragment$1;
.super Ljava/lang/Object;
.source "LogsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/LogsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/LogsFragment;


# direct methods
.method constructor <init>(Lcom/rebel/module/LogsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/LogsFragment;

    .line 72
    iput-object p1, p0, Lcom/rebel/module/LogsFragment$1;->this$0:Lcom/rebel/module/LogsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 77
    iget-object v0, p0, Lcom/rebel/module/LogsFragment$1;->this$0:Lcom/rebel/module/LogsFragment;

    invoke-static {v0}, Lcom/rebel/module/LogsFragment;->-$$Nest$fgetsearchHandler(Lcom/rebel/module/LogsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/rebel/module/LogsFragment$1;->this$0:Lcom/rebel/module/LogsFragment;

    invoke-static {v0}, Lcom/rebel/module/LogsFragment;->-$$Nest$fgetsearchHandler(Lcom/rebel/module/LogsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/rebel/module/LogsFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/rebel/module/LogsFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/LogsFragment$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 73
    return-void
.end method

.method synthetic lambda$afterTextChanged$0$com-src-module-LogsFragment$1()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/rebel/module/LogsFragment$1;->this$0:Lcom/rebel/module/LogsFragment;

    invoke-static {v0}, Lcom/rebel/module/LogsFragment;->-$$Nest$mloadLogs(Lcom/rebel/module/LogsFragment;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 74
    return-void
.end method
