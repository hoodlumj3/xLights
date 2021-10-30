#pragma once

#include <stack>

#include "CPPMetal/CPPMetal.hpp"

#include "../xlGraphicsContext.h"
#include "xlMetalCanvas.h"

#include "Shaders/MetalShaderTypes.h"


class xlMetalGraphicsContext : public xlGraphicsContext {
public:
    xlMetalGraphicsContext(xlMetalCanvas *c);
    virtual ~xlMetalGraphicsContext();


    virtual xlVertexAccumulator *createVertexAccumulator() override;
    virtual xlVertexColorAccumulator *createVertexColorAccumulator() override;

    // Setup the Viewport
    virtual void SetViewport(int x1, int y1, int x2, int y2, bool is3D = false) override;

    //setters for various states
    virtual void enableBlending(bool e = true) override {
        blending = e;
    }

    //drawing methods
    //SingleColor Versions, only vertices need to be transfered, color is in uniform
    virtual void drawLines(xlVertexAccumulator *vac, const xlColor &c) override;
    virtual void drawLineStrip(xlVertexAccumulator *vac, const xlColor &c) override;
    virtual void drawTriangles(xlVertexAccumulator *vac, const xlColor &c) override;
    virtual void drawTriangleStrip(xlVertexAccumulator *vac, const xlColor &c) override;

    virtual void drawLines(xlVertexColorAccumulator *vac) override;
    virtual void drawLineStrip(xlVertexColorAccumulator *vac) override;
    virtual void drawTriangles(xlVertexColorAccumulator *vac) override;
    virtual void drawTriangleStrip(xlVertexColorAccumulator *vac) override;

    //manipulating the matrices
    virtual void PushMatrix() override;
    virtual void PopMatrix() override;
    virtual void Translate(float x, float y, float z) override;
    virtual void Rotate(float angle, float x, float y, float z) override;
    virtual void Scale(float w, float h, float z) override;


protected:
    xlMetalCanvas *canvas;
    MTL::CommandBuffer buffer;
    MTL::RenderCommandEncoder *encoder = nullptr;
    MTL::Drawable *drawable = nullptr;


    void drawPrimitive(MTL::PrimitiveType type, xlVertexAccumulator *vac, const xlColor &c);
    void drawPrimitive(MTL::PrimitiveType type, xlVertexColorAccumulator *vac);

    bool setPipelineState(const std::string &name, const char *vShader, const char *fShader);

    bool blending = false;
    std::string lastPipeline;
    FrameData frameData;
    bool frameDataChanged = true;
    std::stack<simd::float4x4> matrixStack;
};