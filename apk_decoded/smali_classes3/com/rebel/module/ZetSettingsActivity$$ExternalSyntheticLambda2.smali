.class public final synthetic Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/ZetSettingsActivity;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/ZetSettingsActivity;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/rebel/module/ZetSettingsActivity;

    iput-object p2, p0, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/rebel/module/ZetSettingsActivity;

    iget-object v1, p0, Lcom/rebel/module/ZetSettingsActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/rebel/module/ZetSettingsActivity;->lambda$onValidateTelegramClick$2$com-src-module-ZetSettingsActivity(Ljava/lang/Exception;)V

    return-void
.end method
