.class Lcom/rebel/module/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/SettingsFragment;->setupTextListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/rebel/module/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/SettingsFragment;

    .line 443
    iput-object p1, p0, Lcom/rebel/module/SettingsFragment$1;->this$0:Lcom/rebel/module/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .line 454
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment$1;->this$0:Lcom/rebel/module/SettingsFragment;

    invoke-static {v0}, Lcom/rebel/module/SettingsFragment;->-$$Nest$fgetisLoadingConfig(Lcom/rebel/module/SettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment$1;->this$0:Lcom/rebel/module/SettingsFragment;

    invoke-static {v0}, Lcom/rebel/module/SettingsFragment;->-$$Nest$msaveConfig(Lcom/rebel/module/SettingsFragment;)V

    .line 456
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 446
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 450
    return-void
.end method
