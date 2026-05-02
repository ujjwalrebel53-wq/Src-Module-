.class public final synthetic Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/ZetDataManagementActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/ZetDataManagementActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda1;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/rebel/module/ZetDataManagementActivity$$ExternalSyntheticLambda1;->f$0:Lcom/rebel/module/ZetDataManagementActivity;

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Lcom/rebel/module/ZetDataManagementActivity;->lambda$onResetData$2$com-src-module-ZetDataManagementActivity(Landroid/app/Dialog;)V

    return-void
.end method
