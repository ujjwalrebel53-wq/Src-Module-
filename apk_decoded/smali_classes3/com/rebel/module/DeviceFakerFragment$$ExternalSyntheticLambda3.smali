.class public final synthetic Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/DeviceFakerFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/DeviceFakerFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda3;->f$0:Lcom/rebel/module/DeviceFakerFragment;

    iput-object p2, p0, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda3;->f$0:Lcom/rebel/module/DeviceFakerFragment;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/rebel/module/DeviceFakerFragment;->lambda$loadInstalledApps$8$com-src-module-DeviceFakerFragment(Ljava/util/List;)V

    return-void
.end method
