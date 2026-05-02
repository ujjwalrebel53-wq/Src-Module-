.class Lcom/google/android/material/appbar/debut$44;
.super Ljava/lang/Object;
.source "debut.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/debut;->showPinOverlay(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$enteredPin:Ljava/lang/StringBuilder;

.field final synthetic val$errorText:Landroid/widget/TextView;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$overlayRoot:Landroid/widget/FrameLayout;

.field final synthetic val$pinDisplay:Landroid/widget/TextView;

.field final synthetic val$updateDisp:Ljava/lang/Runnable;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Runnable;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Activity;Landroid/view/WindowManager;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1127
    iput-object p1, p0, Lcom/google/android/material/appbar/debut$44;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/material/appbar/debut$44;->val$enteredPin:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/google/android/material/appbar/debut$44;->val$updateDisp:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/google/android/material/appbar/debut$44;->val$errorText:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/android/material/appbar/debut$44;->val$pinDisplay:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/google/android/material/appbar/debut$44;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/google/android/material/appbar/debut$44;->val$wm:Landroid/view/WindowManager;

    iput-object p8, p0, Lcom/google/android/material/appbar/debut$44;->val$overlayRoot:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 1130
    const-string v0, "\u232b"

    iget-object v1, p0, Lcom/google/android/material/appbar/debut$44;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1141
    iget-object v1, p0, Lcom/google/android/material/appbar/debut$44;->val$enteredPin:Ljava/lang/StringBuilder;

    .line 1130
    const/high16 v2, 0x41800000    # 16.0f

    const v3, -0xe1e1e2

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$44;->val$enteredPin:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/material/appbar/debut$44;->val$enteredPin:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1133
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$44;->val$updateDisp:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1134
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$44;->val$errorText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1135
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1136
    .local v0, "nb":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1137
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1138
    const v1, -0xcccccd

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1139
    iget-object v1, p0, Lcom/google/android/material/appbar/debut$44;->val$pinDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1140
    .end local v0    # "nb":Landroid/graphics/drawable/GradientDrawable;
    goto/16 :goto_3

    .line 1141
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, v5, :cond_3

    .line 1142
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$44;->val$enteredPin:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/material/appbar/debut$44;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$44;->val$updateDisp:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1144
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$44;->val$enteredPin:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1146
    const/4 v0, 0x0

    .line 1148
    .local v0, "valid":Z
    :try_start_0
    iget-object v1, p0, Lcom/google/android/material/appbar/debut$44;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "pkg":Ljava/lang/String;
    const-string v5, "com.kreditbee.android"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    iget-object v6, p0, Lcom/google/android/material/appbar/debut$44;->val$enteredPin:Ljava/lang/StringBuilder;

    .line 1149
    if-eqz v5, :cond_1

    .line 1150
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rebel/module/NativeBridge;->nativeValidateKBPin(Ljava/lang/String;)Z

    move-result v5

    move v0, v5

    .end local v0    # "valid":Z
    .local v5, "valid":Z
    goto :goto_0

    .line 1152
    .end local v5    # "valid":Z
    .restart local v0    # "valid":Z
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rebel/module/NativeBridge;->nativeValidateNaviPin(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v5

    .line 1155
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1154
    :catchall_0
    move-exception v1

    .line 1157
    :goto_1
    if-eqz v0, :cond_2

    .line 1160
    :try_start_2
    iget-object v1, p0, Lcom/google/android/material/appbar/debut$44;->val$wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/material/appbar/debut$44;->val$overlayRoot:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1161
    :catchall_1
    move-exception v1

    .line 1162
    :goto_2
    goto :goto_3

    .line 1164
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/appbar/debut$44;->val$errorText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    invoke-direct {v1, v6, v5, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1167
    .local v1, "shake":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0x32

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1168
    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 1169
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 1170
    iget-object v5, p0, Lcom/google/android/material/appbar/debut$44;->val$pinDisplay:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1171
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1172
    .local v5, "eb":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1173
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1174
    const v2, -0xbbbc

    invoke-virtual {v5, v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1175
    iget-object v2, p0, Lcom/google/android/material/appbar/debut$44;->val$pinDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1176
    iget-object v2, p0, Lcom/google/android/material/appbar/debut$44;->val$pinDisplay:Landroid/widget/TextView;

    new-instance v3, Lcom/google/android/material/appbar/debut$44$1;

    invoke-direct {v3, p0}, Lcom/google/android/material/appbar/debut$44$1;-><init>(Lcom/google/android/material/appbar/debut$44;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1186
    .end local v0    # "valid":Z
    .end local v1    # "shake":Landroid/view/animation/TranslateAnimation;
    .end local v5    # "eb":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    :goto_3
    return-void
.end method
