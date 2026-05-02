.class public final synthetic Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/XposedHook;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/XposedHook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$0:Lcom/rebel/module/XposedHook;

    iput-object p2, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    iput-wide p7, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$6:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$0:Lcom/rebel/module/XposedHook;

    iget-object v1, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    iget-wide v6, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda2;->f$6:J

    invoke-virtual/range {v0 .. v7}, Lcom/rebel/module/XposedHook;->lambda$handleInterceptedSms$0$com-src-module-XposedHook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
