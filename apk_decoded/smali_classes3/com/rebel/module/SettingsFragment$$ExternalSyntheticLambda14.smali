.class public final synthetic Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/SettingsFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/SettingsFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda14;->f$0:Lcom/rebel/module/SettingsFragment;

    iput p2, p0, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda14;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda14;->f$0:Lcom/rebel/module/SettingsFragment;

    iget v1, p0, Lcom/rebel/module/SettingsFragment$$ExternalSyntheticLambda14;->f$1:I

    invoke-virtual {v0, v1}, Lcom/rebel/module/SettingsFragment;->lambda$verifyTelegram$23$com-src-module-SettingsFragment(I)V

    return-void
.end method
