.class Lcom/rebel/module/DeviceFakerFragment$1;
.super Ljava/lang/Object;
.source "DeviceFakerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/DeviceFakerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/DeviceFakerFragment;


# direct methods
.method constructor <init>(Lcom/rebel/module/DeviceFakerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/DeviceFakerFragment;

    .line 146
    iput-object p1, p0, Lcom/rebel/module/DeviceFakerFragment$1;->this$0:Lcom/rebel/module/DeviceFakerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 151
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment$1;->this$0:Lcom/rebel/module/DeviceFakerFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rebel/module/DeviceFakerFragment;->-$$Nest$mfilterApps(Lcom/rebel/module/DeviceFakerFragment;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 147
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 148
    return-void
.end method
