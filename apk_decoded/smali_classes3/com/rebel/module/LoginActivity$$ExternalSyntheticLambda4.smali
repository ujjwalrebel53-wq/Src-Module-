.class public final synthetic Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/LoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda4;->f$0:Lcom/rebel/module/LoginActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/rebel/module/LoginActivity$$ExternalSyntheticLambda4;->f$0:Lcom/rebel/module/LoginActivity;

    invoke-virtual {v0}, Lcom/rebel/module/LoginActivity;->lambda$attemptLogin$4$com-src-module-LoginActivity()V

    return-void
.end method
