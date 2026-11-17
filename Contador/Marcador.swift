//
//  Marcador.swift
//  Contador
//
//  Created by MAC on 17/11/26.
//

import SwiftUI

struct Marcador: View {
    @State private var contador1 = 0
    @State private var contador2 = 0

    var body: some View {
        VStack{
            Text("MARCADOR")
                .font(.largeTitle)
                .bold()
            HStack(spacing: 0){
                VStack(spacing: 24) {
                    Text("Equipo A")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(Color.orange)
                    Text("\(contador1)")
                        .font(.system(size: 96, weight: .bold))
                        .foregroundStyle(contador1 >= 10 ? Color.orange : Color.primary)
                        .contentTransition(.numericText())
                        .foregroundStyle(contador1 >= 10 ? Color.orange : Color.primary)
                    HStack(spacing: 16) {
                        Button {
                            withAnimation {
                                contador1 -= 1
                            }
                        } label: {
                            Image(systemName: "minus").frame(width: 40, height: 30)
                        }
                        .buttonStyle(.bordered)
                        .disabled(contador1 == 0)
                        Button {
                            withAnimation {
                                contador1 += 1
                            }                } label: {
                                Image(systemName: "plus").frame(width: 40, height: 30)
                            }
                            .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                    Button("Reiniciar", role: .destructive) {
                        contador1 = 0
                    }
                    if contador1 >= 10 {
                        Text("¡Llegaste a 10!")
                            .   font(.headline)
                    }
                }
                .tint(.orange)
                .padding()
                Text("VS")
                    .font(.subheadline)
                    .bold()
                VStack(spacing: 24) {
                    Text("Equipo B")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(Color.blue)
                    Text("\(contador2)")
                        .font(.system(size: 96, weight: .bold))
                        .foregroundStyle(contador2 >= 10 ? Color.blue : Color.primary)
                        .contentTransition(.numericText())
                        .foregroundStyle(contador2 >= 10 ? Color.blue : Color.primary)
                    HStack(spacing: 16) {
                        Button {
                            withAnimation {
                                contador2 -= 1
                            }
                        } label: {
                            Image(systemName: "minus").frame(width: 40, height: 30)
                        }
                        .buttonStyle(.bordered)
                        .disabled(contador2 == 0)
                        Button {
                            withAnimation {
                                contador2 += 1
                            }                } label: {
                                Image(systemName: "plus").frame(width: 40, height: 30)
                            }
                            .buttonStyle(.borderedProminent)
                    }
                    .font(.title)
                    Button("Reiniciar", role: .destructive) {
                        contador2 = 0
                    }
                    if contador2 >= 10 {
                        Text("¡Llegaste a 10!")
                            .   font(.headline)
                    }
                }
                .tint(.blue)
                .padding()
            }
            if contador1 < contador2 {
                withAnimation{
                    Text("Va Ganando el Equipo B!")
                        .bold()
                        .font(.headline)
                }
            }
            if contador1 > contador2 {
                withAnimation{
                    Text("Va Ganando el Equipo A!")
                        .bold()
                        .font(.headline)
                }
            }
        }
    }
    }


#Preview {
    Marcador()
}
